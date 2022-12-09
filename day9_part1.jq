[inputs/" "]
|reduce .[] as $x ({h: {x:0,y:0}, t: {x:0,y:0}, c: {}};
  ($x|debug) as $_
  |. |= . as $x1|[range($x[1]|tonumber)]|reduce .[] as $_ ($x1;
     if $x[0] == "U" then
       .h.y+=1
     elif $x[0] == "D" then
       .h.y-=1
     elif $x[0] == "L" then
       .h.x-=1
     elif $x[0] == "R" then
       .h.x+=1
     else
       error("bad input")
     end
     |(.h.x-.t.x) as $dx
     |(.h.y-.t.y) as $dy
     |([$dx,$dy]|debug) as $_
     |if $dx == 0 or $dy == 0 then
        if   $dx > 1  then .t.x += 1
        elif $dx < -1 then .t.x -= 1
        elif $dy > 1  then .t.y += 1
        elif $dy < -1 then .t.y -= 1
        else . end
      elif ($dx > 1 or $dx < -1) or ($dy > 1 or $dy < -1) then
         if   $dx >= 1  then .t.x += 1
         elif $dx <= -1 then .t.x -= 1
         else . end
        |if   $dy >= 1  then .t.y += 1
         elif $dy <= -1 then .t.y -= 1
         else . end
      else
        .
      end
     |.c[[.t.y,.t.x]|join(",")] += 1
     |. as $g
     |(([1,.h.x,.t.x]|max) as $w
      |([1,.h.y,.t.y]|max) as $h
      |[range($h+1)]|reverse
      |reduce .[] as $y1 ([];
         . += [[range($w+1)]|reduce .[] as $x1 ([];
                 if $g.h.x == $x1 and $g.h.y == $y1 then
                   . += ["H"]
                 elif $g.t.x == $x1 and $g.t.y == $y1 then
                   . += ["T"]
                 else
                   . += ["."]
                 end
               )]
       )
      |map(debug)
      |.
      ) as $_
      |.
    )
)
|.c|flatten|[.[]|select(.!=null)]|length
