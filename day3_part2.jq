def partition($n):
  def _partition:
    if length <= $n then . else .[:$n], (.[$n:]|_partition) end;
  _partition;
[[inputs|split("\n")|.[:-1]|.[]|split("")]                                    # lines into array of chars
|partition(3)|. as [$a,$b,$c]                                                 # array into chunks of 3
|$a|map(select([.]|(inside($b) and inside($c))))|unique                       # chars common in chunks
|.[] as $x|"0abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"|index($x)  # char to index
]|add                                                                         # sum
