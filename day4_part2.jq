[split("\n")|.[:-1][]|split(",")|map(split("-")|map(tonumber))
|select((.[0][1]>=.[1][0] and .[0][0]<=.[1][1]))
]|length
