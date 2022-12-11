[inputs/"\n\n"|
.[]
|match("Monkey (\\d+):\n  Starting items: ([^\n]+)"
+ "\n  Operation: new = old (.) ([^\n]+)"
+ "\n  Test: divisible by (\\d+)"
+ "\n    If true: throw to monkey (\\d+)"
+ "\n    If false: throw to monkey (\\d+)"
; "m") // error("failed to parse")
|{items: (.captures[1].string/", "|map(tonumber))
 ,op: [.captures[2].string,.captures[3].string]
 ,test: .captures[4].string|tonumber
 ,true: .captures[5].string|tonumber
 ,false: .captures[6].string|tonumber}
] as $monkeys
|(reduce range($monkeys|length) as $i (1; . *= $monkeys[$i].test)) as $x
|reduce range(10000) as $round ({stacks:[$monkeys|.[]|.items]};
  reduce range(.stacks|length) as $i (.;
     ($monkeys[$i]) as $monkey
    |($monkey.op[0]) as $op
    |reduce range(.stacks[$i]|length) as $j (.;
       (.stacks[$i][0]) as $a
      |.stacks[$i] = .stacks[$i][1:]
      |.counts[$i] += 1
      |($monkey.op[1]|if . == "old" then $a else .|tonumber end) as $b
      |(if $op == "*" then ($a * $b) % $x
       elif $op == "+" then ($a + $b) % $x
       else $a end) as $v
      |($monkey[$v % $monkey.test == 0|tostring]) as $target
      #|(("throw " + ($v|tostring) + " to monkey " + ($target|tostring))|debug) as $_
      |.stacks[$target] += [$v]
    )
  )
)|.counts|sort[-2:]|.[0]*.[1]
