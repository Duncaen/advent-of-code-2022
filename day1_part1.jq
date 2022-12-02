split("\n") | .[:-1] |
reduce .[] as $x (
  [[]];
  if $x == "" then
    . += [[]]
  else
    .[-1] += [$x|tonumber]
  end
) | map(add) | max
