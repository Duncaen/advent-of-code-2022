[split("\n")|.[:-1][]|split(",")|map(split("-")|map(tonumber))
|select((.[0][0]<=.[1][0] and .[0][1]>=.[1][1]) or (.[1][0]<=.[0][0] and .[1][1]>=.[0][1]))
]|length
