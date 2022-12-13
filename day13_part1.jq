def cmp:
  def _cmp($a;$b):
    (["_cmp",$a, "-", $b]) as $_
    |reduce range([$a|length,$b|length]|min) as $i (null;
      if . == null then
        if ($a[$i]|type) == ($b[$i]|type) then
          if $a[$i]|type == "number" then
            (["compare",$a[$i],":",$b[$i]]) as $_
            |if $a[$i] < $b[$i] then
               true
             elif $a[$i] > $b[$i] then
               false
             else
               null
            end
          else
            _cmp($a[$i]; $b[$i])
          end
        elif ($a[$i]|type) == "number" then
          _cmp([$a[$i]];$b[$i])
        else
          _cmp($a[$i];[$b[$i]])
        end
      else
        .
      end
    )|if .==null then
        if ($a|length) < ($b|length) then
          true
        elif ($a|length) > ($b|length) then
          false
        else null end
      else
        .
      end;
  _cmp(.[0];.[1]);
[inputs/"\n\n"|.[:-1]|.[]/"\n"
|map(fromjson)
|cmp
]|indices(true)|map(.+1)|add
