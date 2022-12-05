def move($moves):
  def _move:
    # _move pops the first move out of .moves, modifies
    # .stacks and calls itself with the modified input.
    # when moves is 0 we are done and return .stacks
    if .moves|length > 0 then
      ((.moves[0]) as [$n,$from,$to]
      |{stacks:.stacks
       ,moves:.moves[1:]}
      |(.stacks[$from-1][:$n]|reverse) as $x    # get items from stack
      |.stacks[$from-1] = .stacks[$from-1][$n:] # pop items from stack
      |.stacks[$to-1] = $x+.stacks[$to-1]       # put items on stack
      |_move)                                   # recurse with modified obj as input
    else . end;
  {stacks: .[],moves: $moves}|_move|.stacks;
inputs|split("\n\n")|map(split("\n"))                    # split stacks, moves and then lines
|(.[1][:-1]|map([split(" ")[1,3,5]|tonumber])) as $moves # parse moves
|[.[0][]|[scan(".{3} ?")]][:-1]                          # tokenize stacks
|map([.[]|capture("\\[(?<a>[A-Z])\\]|")|.a])             # capture letters from stack
|transpose                                               # transpose the caputures into "real" stacks
|[map(map(select(.)))]                                   # remove null's added by transpose
|move($moves)                                            # execute moves
|map(first)|join("")                                     # get top item of each step and join to string
