[inputs/" "]
|reduce .[] as $x ({k: [{x:0,y:0} as $x | range(11) | $x], c: {}};
  ($x|debug) as $_
  |. |= . as $x1|[range($x[1]|tonumber)]|reduce .[] as $_ ($x1;
     if $x[0] == "U" then
       .k[0].y+=1
     elif $x[0] == "D" then
       .k[0].y-=1
     elif $x[0] == "L" then
       .k[0].x-=1
     elif $x[0] == "R" then
       .k[0].x+=1
     else
       error("bad input")
     end
     |. as $x1
     |.|=(reduce range(1;10) as $i ($x1;
        (.k[$i-1].x-.k[$i].x) as $dx
       |(.k[$i-1].y-.k[$i].y) as $dy
       |([$i,":",$dx,$dy]|debug) as $_
       |if $dx == 0 or $dy == 0 then
          if   $dx > 1  then .k[$i].x += 1
          elif $dx < -1 then .k[$i].x -= 1
          elif $dy > 1  then .k[$i].y += 1
          elif $dy < -1 then .k[$i].y -= 1
          else . end
        elif ($dx > 1 or $dx < -1) or ($dy > 1 or $dy < -1) then
           if   $dx >= 1  then .k[$i].x += 1
           elif $dx <= -1 then .k[$i].x -= 1
           else . end
          |if   $dy >= 1  then .k[$i].y += 1
           elif $dy <= -1 then .k[$i].y -= 1
           else . end
        else
          .
        end
       )
       |.c[[.k[9].y,.k[9].x]|join(",")] += 1
      )
     |. as $g
     |(([1,.k[].x]|max) as $w
      |([1,.k[].y]|max) as $h
      |[range($h+1)]|reverse
      |reduce .[] as $y1 ([];
         . += [[range($w+1)]|reduce .[] as $x1 ([];
                 .[$x1] = reduce range(9;-1;-1) as $i (".";
                   if $g.k[$i].x == $x1 and $g.k[$i].y == $y1 then
                     . = if $i == 0 then "H" else ($i|tostring) end
                   else
                     .
                   end
                 )
               )]
       )
      |map(debug)
      ) as $_
      |.
    )
)
|.c|flatten|[.[]|select(.!=null)]|length
