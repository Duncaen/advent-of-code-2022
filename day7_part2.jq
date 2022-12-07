def du:
  def _du:
    with_entries(.value|=
      if .|type == "object" then
        _du|.+{".": [to_entries|.[].value|if .|type == "object" then ."." else . end]|add }
      else
        .
      end);
  _du;
[inputs/" "]|reduce .[] as $x ({"/":{},cwd:["/"]};
  if $x[0] == "$" then
    .ls = false|
    if $x[1] == "cd" then
      if $x[2] == ".." then
        .cwd = .cwd[:-1]
      elif $x[2] == "/" then
        .cwd = ["/"]
      else
        .cwd += [$x[2]]
      end
    else
      .
    end
  elif $x[0] == "dir" then
    setpath(["/"]+.cwd; getpath(["/"]+.cwd)+{($x[1]): {}})
  else
    setpath(["/"]+.cwd; getpath(["/"]+.cwd)+{($x[1]): $x[0]|tonumber})
  end)
|."/"
|du
|(30000000-(70000000-."/".".")) as $delete
|map(path(..|."."? // empty) as $path | {($path[:-1]|join("/")):getpath($path)})
|add
|with_entries(select(.value>=$delete))
|to_entries
|sort_by(.value)
|first|.value
