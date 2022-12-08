[inputs/""|map(tonumber)]
|. as $in
|length as $n
|[range($n*$n)]|map([.%$n,./$n|floor])
|reduce .[] as [$x,$y] ([]; .[$y]+=[[$in[$y][:$x]
                                    ,$in[$y][$x+1:]
                                    ,($in[:$y]|map(.[$x]))
                                    ,($in[$y+1:]|map(.[$x]))
                                    ]|any(all(.<$in[$y][$x]))])
|flatten|[.[]|select(.==true)]|length
