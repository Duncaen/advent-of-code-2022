reduce [inputs/" "][] as $instr ({x:1, cycle: 0, s:[], crt:[[]]};
   .crt[.cycle/40|floor] += [if (.cycle%40)+1 >= .x and (.cycle%40)+1<.x+3 then "#" else "." end]
  |.cycle += 1
  |if .cycle % 40 == 20 then .s += [.cycle*.x] else . end
  |if $instr[0] == "addx" then
      .crt[.cycle/40|floor] += [if (.cycle%40)+1 >= .x and (.cycle%40)+1<.x+3 then "#" else "." end]
     |.cycle += 1
     |if .cycle % 40 == 20 then .s += [.cycle*.x] else . end
     |.x += ($instr[1]|tonumber)
   else . end
  )|.crt[]|join("")
