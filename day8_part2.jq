[inputs/""|map(tonumber)]
|. as $in
|length as $n
|[range($n*$n)]|map([.%$n,./$n|floor])
|reduce .[] as [$x,$y]
([]; .[$y]+=[[($in[:$y]|map(.[$x])|reverse)
             ,$in[$y][:$x]|reverse
             ,$in[$y][$x+1:]
             ,$in[$y+1:]|map(.[$x])
             ]|map(reduce .[] as $c ({n:0,c:true};
               if .c then
                 .n+=1|
                 if $c >= $in[$y][$x] then
                   .c=false
                 else . end
               else . end)|.n)|.[0]*.[1]*.[2]*.[3]])
|flatten|max
