def move:
  def _move:
    if .moves|length == 0 then
      .
    else
      (.moves[0] as [$n,$from,$to]
      |{stack:.stack
       ,moves:.moves[1:]}
      |(.stack[$from-1][:$n]|reverse) as $x
      |.stack[$from-1] = .stack[$from-1][$n:]
      |.stack[$to-1] = $x+.stack[$to-1]
      |_move)
    end;
  _move;
inputs|split("\n\n") as [$a, $b]|
{stack: ([$a|split("\n")[]|[scan(".{3} ?")]][:-1]|map(0 as $i|[.[]|capture("\\[(?<a>[A-Z])\\]|")|.a])|transpose|[.[]|map(select(.!=null))])
,moves: $b|split("\n")[:-1]|map(capture("move (?<n>\\d+) from (?<s>\\d+) to (?<t>\\d+)")|[(.n|tonumber),(.s|tonumber),(.t|tonumber)])
}|move|.stack|map(first)|join("")
