reduce [inputs/" "][] as $instr ({x:1, cycle: 0, s:[]};
   .cycle += 1
  |if .cycle % 40 == 20 then .s += [.cycle*.x] else . end
  |if $instr[0] == "addx" then
      .cycle += 1
     |if .cycle % 40 == 20 then .s += [.cycle*.x] else . end
     |.x += ($instr[1]|tonumber)
   else . end
  )|.s|add
