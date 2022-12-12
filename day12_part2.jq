 [inputs|explode] as $in
|([($in|length),($in[0]|length)]) as [$h,$w]
|($in|flatten|
  [(index(83)|{x:(.%($in[0]|length)),y:(./($in[0]|length)|floor)})
  ,(index(69)|{x:(.%($in[0]|length)),y:(./($in[0]|length)|floor)})]
) as [$s,$e]
|($in|(.[$s.y][$s.x]=97)) as $in
|[$s,$e]
|[{q: [$e+{h:122,c:0}], i:0}
|while(.i<(.q|length);
   (.q[.i]) as $c
  |. as $dot
  |.q += [[{x:($c.x-1),y:$c.y,}
         ,{x:($c.x+1),y:$c.y, }
         ,{x:$c.x,y:($c.y-1), }
         ,{x:$c.x,y:($c.y+1), }][]
         |select(
            . as $c1|
            (.x >= 0 and .x < $w) and
            (.y >= 0 and .y < $h) and
            (($in[.y][.x] >= $c.h) or ($in[.y][.x] == $c.h-1)) and
            ([$dot.q[]|select(.x==$c1.x and .y==$c1.y)]|length) == 0)
         |. + {h:$in[.y][.x],c:($c.c+1)}]
  |.i += 1
)]|last
|(reduce .q[] as $i ([range($h)|[range($w)|-1]];
  .[$i.y][$i.x] = $i.c
)|flatten) as $out
|[$in|flatten|indices(97)|map($out[.])[]|select(.!=-1)]
|min
