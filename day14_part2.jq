[inputs/" -> "|map(./","|[.[]|tonumber])]
|([.[][]|.[1]]|max+2) as $floor
|reduce .[] as $xs ([]; 
  . = reduce range(1;$xs|length) as $i (.;
    if $xs[$i-1][0] == $xs[$i][0] then
      ([$xs[$i-1][1],$xs[$i][1]]|sort) as [$s,$e]
      |. = reduce range($s;$e+1) as $y (.;
        .[$y][$xs[$i-1][0]] = "#"
      )
    else 
      ([$xs[$i-1][0],$xs[$i][0]]|sort) as [$s,$e]
      |. = reduce range($s;$e+1) as $x (.;
        .[$xs[$i-1][1]][$x] = "#"
      )
    end
  )
)
#|.[0][500] = "+"
|{i: 0, g: ., x: 500, y: 0, done: false}
|[until((.g[0]?[500]//".") == "o";
   (.g) as $g
  |([{x:500,y:0,done:false}|until(.done;
     (.x) as $x
    |.y = (.y|[until((($g[.]?[$x]//".") != ".") or (. == $floor); . += 1)]|last)
    |if .y < $floor then
      if ($g[.y]?[.x-1]//".") == "." then
         .x -= 1
        |.done = (($g[.y]?[.x]//".") != ".")
      elif ($g[.y]?[.x+1]//".") == "." then
         .x += 1
        |.done = (($g[.y]?[.x]//".") != ".")
      else
         .y -= 1
        |.done = true
      end
      #|debug
    else
      .y -= 1
      |.done = true
    end
   )]|last) as {y:$y,x:$x}
   | .g[$y][$x] = "o"
   |.i += 1
)
#|(.g|.[:20]|map(.[490:]//[]|map(.//".")) |map(join("")))]
]|last|.i
