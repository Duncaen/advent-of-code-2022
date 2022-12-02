split("\n") | reduce .[] as $x ({n:0,a:[[]]}; if $x == "" then .n += 1 | .a += [[]] else .a[.n] += [$x|tonumber] end) | .a | map(add) | max
