{"A": "rock"
,"B": "paper"
,"C": "scissors"
,"X": "rock"
,"Y": "paper"
,"Z": "scissors"} as $shape |
{"rock": "scissors"
,"paper": "rock"
,"scissors": "paper"} as $winner |
{"rock": 1
,"paper": 2
,"scissors": 3} as $points |
[split("\n") | .[:-1] | map(split(" ")) | .[] | map($shape[.]) |
 if $winner[.[1]] == .[0] then 6 elif .[0] == .[1] then 3 else 0 end,$points[.[1]]
] | add
