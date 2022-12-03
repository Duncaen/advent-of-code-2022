[inputs|split("\n")|.[:-1]|.[]|split("")                                      # lines into array of chars
|(length/2) as $i|[.[:$i],.[$i:]] as [$first, $second]                        # split array into first and second half
|$first|map(select([.]|inside($second)))|unique                               # find chars common in both halves
|.[] as $x|"0abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"|index($x)  # char to index
]|add                                                                         # sum
