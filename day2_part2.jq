{"A": "rock"
,"B": "paper"
,"C": "scissors"
,"X": "rock"
,"Y": "paper"
,"Z": "scissors"} as $shape |
{"rock": "scissors"
,"paper": "rock"
,"scissors": "paper"} as $winner |
{"rock": "paper"
,"paper": "scissors"
,"scissors": "rock"} as $loser |
{"rock": 1
,"paper": 2
,"scissors": 3} as $points |
[split("\n") | .[:-1] | map(split(" ")) | .[] |
 if .[1] == "X" then $points[$winner[$shape[.[0]]]]
 elif .[1] == "Y" then $points[$shape[.[0]]]+3
 else $points[$loser[$shape[.[0]]]]+6
 end] | add
