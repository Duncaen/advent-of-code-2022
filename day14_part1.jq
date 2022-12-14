[inputs/" -> "|map(./","|[.[]|tonumber])]
|([.[][]|.[1]]|max) as $abyss
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
|.[0][500] = "+"
|{i: 0, g: ., x: 500, y: 1, done: false}
|[while(.done==false;
   (.g) as $g
  |([{x:500,y:1,done:false}|until(.done;
     (.x) as $x
    |.y = (.y|[until((($g[.]?[$x]//".") != ".") or (. > $abyss); . += 1)]|last)
    |if .y <= $abyss then
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
      .done = true
    end
   )]|last) as {y:$y,x:$x}
  |if $y > $abyss then
     .done = true
   else
      .g[$y][$x] = "o"
     |.i += 1
   end
)
#|(.g|.[:20]|map(.[490:]//[]|map(.//".")) |map(join(""))|debug) as $_
#|.
]|last|.i
