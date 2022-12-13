def cmp($a;$b):
  def _cmp($a;$b):
    (["_cmp",$a, "-", $b]) as $_
    |reduce range([$a|length,$b|length]|min) as $i (null;
      if . == null then
        if ($a[$i]|type) == ($b[$i]|type) then
          if $a[$i]|type == "number" then
            (["compare",$a[$i],":",$b[$i]]) as $_
            |if $a[$i] < $b[$i] then
               -1
             elif $a[$i] > $b[$i] then
               1
             else
               null
            end
          else
            _cmp($a[$i]; $b[$i])
          end
        elif ($a[$i]|type) == "number" then
          _cmp([$a[$i]];$b[$i])
        else
          _cmp($a[$i];[$b[$i]])
        end
      else
        .
      end
    )|if .==null then
        if ($a|length) < ($b|length) then
          -1
        elif ($a|length) > ($b|length) then
          1
        else null end
      else
        .
      end;
  _cmp($a;$b) // 0;
def bsort:
  {n: length, l: .}|until(.n < 1;
    .newn = 0
    |. |= reduce range(1;.n) as $i (.;
      cmp(.l[$i-1];.l[$i]) as $r
      |if $r > 0 then
          (.l[$i-1]) as $a
         |.l[$i-1] = .l[$i]
         |.l[$i] = $a
         |.newn = $i
       else
         .
       end
    )
    |.n = .newn
  ).l;
[inputs/"\n"
|select(.!=[])[]
|fromjson
]+[[[2]],[[6]]]|bsort as $out
|$out|map(tostring)
|[($out|indices([[[2]]])[0]+1)
 ,($out|indices([[[6]]])[0]+1)
 ]|.[0]*.[1]
