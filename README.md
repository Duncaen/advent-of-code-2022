# Advent of Code 2022

## Day 1

```
$ jq -Rsf day1_part1.jq day1.test.in
24000
$ jq -Rsf day1_part2.jq day1.test.in
45000
```

## Day 2

```
$ jq -Rsf day2_part1.jq day2.test.in
15
$ jq -Rsf day2_part2.jq day2.test.in
12
```

## Day 3

```
$ jq -Rsnf day3_part1.jq day3.test.in
157
$ jq -Rsnf day3_part2.jq day3.test.in
70
```

## Day 4

```
$ jq -Rsf day4_part1.jq day4.test.in
2
$ jq -Rsf day4_part2.jq day4.test.in
4
```

## Day 5

```
$ jq -Rnsf day5_part1.jq day5.test.in
"CMZ"
$ jq -Rnsf day5_part2.jq day5.test.in
"MCD"
```

## Day 6

```
$ jq -Rnf day6_part1.jq day6.test.in
5
6
10
11
$ jq -Rnf day6_part2.jq day6.part2.test.in
19
23
23
29
26
```

## Day 7

```
$ jq -Rnf day7_part1.jq day7.test.in
95437
$ jq -Rnf day7_part2.jq day7.test.in
24933642
```

## Day 8

```
$ time jq -Rnf day8_part1.jq day8.test.in
21
$ time jq -Rnf day8_part2.jq day8.test.in
8
```

## Day 9

```
$ jq -Rnf day9_part1.jq day9.test.in
["DEBUG:",["R","4"]]
["DEBUG:",[1,0]]
["DEBUG:",[".","."]]
["DEBUG:",["T","H"]]
["DEBUG:",[2,0]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".","T","H"]]
["DEBUG:",[2,0]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".","T","H"]]
["DEBUG:",[2,0]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".","T","H"]]
["DEBUG:",["U","4"]]
["DEBUG:",[1,1]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".","T","."]]
["DEBUG:",[1,2]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[0,2]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[0,2]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",["L","3"]]
["DEBUG:",[-1,1]]
["DEBUG:",[".",".",".","H","."]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[-2,1]]
["DEBUG:",[".",".","H","T"]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[-2,0]]
["DEBUG:",[".","H","T"]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",["D","1"]]
["DEBUG:",[-1,-1]]
["DEBUG:",[".",".","T"]]
["DEBUG:",[".","H","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",["R","4"]]
["DEBUG:",[0,-1]]
["DEBUG:",[".",".","T"]]
["DEBUG:",[".",".","H"]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[1,-1]]
["DEBUG:",[".",".","T","."]]
["DEBUG:",[".",".",".","H"]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[2,-1]]
["DEBUG:",[".",".",".","T","H"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[2,0]]
["DEBUG:",[".",".",".",".","T","H"]]
["DEBUG:",[".",".",".",".",".","."]]
["DEBUG:",[".",".",".",".",".","."]]
["DEBUG:",[".",".",".",".",".","."]]
["DEBUG:",["D","1"]]
["DEBUG:",[1,-1]]
["DEBUG:",[".",".",".",".","T","."]]
["DEBUG:",[".",".",".",".",".","H"]]
["DEBUG:",[".",".",".",".",".","."]]
["DEBUG:",[".",".",".",".",".","."]]
["DEBUG:",["L","5"]]
["DEBUG:",[0,-1]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[-1,-1]]
["DEBUG:",[".",".",".",".","T"]]
["DEBUG:",[".",".",".","H","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",[-2,-1]]
["DEBUG:",[".",".","H","T"]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",[-2,0]]
["DEBUG:",[".","H","T"]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
["DEBUG:",[-2,0]]
["DEBUG:",["H","T"]]
["DEBUG:",[".","."]]
["DEBUG:",[".","."]]
["DEBUG:",["R","2"]]
["DEBUG:",[0,0]]
["DEBUG:",[".","H"]]
["DEBUG:",[".","."]]
["DEBUG:",[".","."]]
["DEBUG:",[1,0]]
["DEBUG:",[".","T","H"]]
["DEBUG:",[".",".","."]]
["DEBUG:",[".",".","."]]
13
$ jq -Rnf day9_part2.jq day9.test.in
["DEBUG:",["R","4"]]
["DEBUG:",[1,":",1,0]]
["DEBUG:",[2,":",0,0]]
["DEBUG:",[3,":",0,0]]
["DEBUG:",[4,":",0,0]]
["DEBUG:",[5,":",0,0]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".","."]]
["DEBUG:",["1","H"]]
["DEBUG:",[1,":",2,0]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",0,0]]
["DEBUG:",[4,":",0,0]]
["DEBUG:",[5,":",0,0]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".","."]]
["DEBUG:",["2","1","H"]]
["DEBUG:",[1,":",2,0]]
["DEBUG:",[2,":",2,0]]
["DEBUG:",[3,":",1,0]]
["DEBUG:",[4,":",0,0]]
["DEBUG:",[5,":",0,0]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","."]]
["DEBUG:",["3","2","1","H"]]
["DEBUG:",[1,":",2,0]]
["DEBUG:",[2,":",2,0]]
["DEBUG:",[3,":",2,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",0,0]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".",".","."]]
["DEBUG:",["4","3","2","1","H"]]
["DEBUG:",["U","4"]]
["DEBUG:",[1,":",1,1]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",0,0]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",["4","3","2","1","."]]
["DEBUG:",[1,":",1,2]]
["DEBUG:",[2,":",2,1]]
["DEBUG:",[3,":",2,1]]
["DEBUG:",[4,":",2,1]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".","4","3","2","1"]]
["DEBUG:",["5",".",".",".","."]]
["DEBUG:",[1,":",0,2]]
["DEBUG:",[2,":",1,1]]
["DEBUG:",[3,":",1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",0,0]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","1"]]
["DEBUG:",[".","4","3","2","."]]
["DEBUG:",["5",".",".",".","."]]
["DEBUG:",[1,":",0,2]]
["DEBUG:",[2,":",1,2]]
["DEBUG:",[3,":",2,1]]
["DEBUG:",[4,":",2,1]]
["DEBUG:",[5,":",2,2]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".",".","H"]]
["DEBUG:",[".",".",".",".","1"]]
["DEBUG:",[".",".","4","3","2"]]
["DEBUG:",[".","5",".",".","."]]
["DEBUG:",["6",".",".",".","."]]
["DEBUG:",["L","3"]]
["DEBUG:",[1,":",-1,1]]
["DEBUG:",[2,":",0,1]]
["DEBUG:",[3,":",1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","H","."]]
["DEBUG:",[".",".",".",".","1"]]
["DEBUG:",[".",".","4","3","2"]]
["DEBUG:",[".","5",".",".","."]]
["DEBUG:",["6",".",".",".","."]]
["DEBUG:",[1,":",-2,1]]
["DEBUG:",[2,":",-1,2]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".","H","1"]]
["DEBUG:",[".",".",".","2"]]
["DEBUG:",[".",".","4","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",-2,0]]
["DEBUG:",[2,":",-1,1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".","H","1","."]]
["DEBUG:",[".",".",".","2"]]
["DEBUG:",[".",".","4","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",["D","1"]]
["DEBUG:",[1,":",-1,-1]]
["DEBUG:",[2,":",-1,1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".","1","."]]
["DEBUG:",[".","H",".","2"]]
["DEBUG:",[".",".","4","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",["R","4"]]
["DEBUG:",[1,":",0,-1]]
["DEBUG:",[2,":",-1,1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".","1","."]]
["DEBUG:",[".",".","H","2"]]
["DEBUG:",[".",".","4","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",1,-1]]
["DEBUG:",[2,":",-1,1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".","1","."]]
["DEBUG:",[".",".",".","H"]]
["DEBUG:",[".",".","4","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",2,-1]]
["DEBUG:",[2,":",0,0]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","1","H"]]
["DEBUG:",[".",".","4","3","."]]
["DEBUG:",[".","5",".",".","."]]
["DEBUG:",["6",".",".",".","."]]
["DEBUG:",[1,":",2,0]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2","1","H"]]
["DEBUG:",[".",".","4","3",".","."]]
["DEBUG:",[".","5",".",".",".","."]]
["DEBUG:",["6",".",".",".",".","."]]
["DEBUG:",["D","1"]]
["DEBUG:",[1,":",1,-1]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2","1","."]]
["DEBUG:",[".",".","4","3",".","H"]]
["DEBUG:",[".","5",".",".",".","."]]
["DEBUG:",["6",".",".",".",".","."]]
["DEBUG:",["L","5"]]
["DEBUG:",[1,":",0,-1]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2","1"]]
["DEBUG:",[".",".","4","3","H"]]
["DEBUG:",[".","5",".",".","."]]
["DEBUG:",["6",".",".",".","."]]
["DEBUG:",[1,":",-1,-1]]
["DEBUG:",[2,":",1,0]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2","1"]]
["DEBUG:",[".",".","4","H","."]]
["DEBUG:",[".","5",".",".","."]]
["DEBUG:",["6",".",".",".","."]]
["DEBUG:",[1,":",-2,-1]]
["DEBUG:",[2,":",0,-1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2"]]
["DEBUG:",[".",".","H","1"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",-2,0]]
["DEBUG:",[2,":",-1,-1]]
["DEBUG:",[3,":",0,1]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".",".",".","2"]]
["DEBUG:",[".","H","1","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",-2,0]]
["DEBUG:",[2,":",-2,-1]]
["DEBUG:",[3,":",-1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",["H","1","2","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",["R","2"]]
["DEBUG:",[1,":",0,0]]
["DEBUG:",[2,":",-1,0]]
["DEBUG:",[3,":",-1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".","H","2","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
["DEBUG:",[1,":",1,0]]
["DEBUG:",[2,":",-1,0]]
["DEBUG:",[3,":",-1,0]]
["DEBUG:",[4,":",1,0]]
["DEBUG:",[5,":",1,1]]
["DEBUG:",[6,":",1,1]]
["DEBUG:",[7,":",0,0]]
["DEBUG:",[8,":",0,0]]
["DEBUG:",[9,":",0,0]]
["DEBUG:",[".","1","H","3"]]
["DEBUG:",[".","5",".","."]]
["DEBUG:",["6",".",".","."]]
1
```

# Day 10

```
$ jq -Rnf day10_part1.jq day10.test.in
13140
$ jq -Rnf day10_part2.jq day10.test.in
"##..##..##..##..##..##..##..##..##..##.."
"###...###...###...###...###...###...###."
"####....####....####....####....####...."
"#####.....#####.....#####.....#####....."
"######......######......######......####"
"#######.......#######.......#######....."
```

# Day 11

```
$ jq -Rsnf day11_part1.jq day11.test.in 2>/dev/null
10605
$ jq -Rsnf day11_part2.jq day11.test.in
2713310158
```

# Day 12

```
$ jq -Rnf day12_part1.jq day12.test.in
31
$ jq -Rnf day12_part2.jq day12.test.in
29
```

# Day 13

```
$ jq -Rsnf day13_part1.jq day13.test.in
13
$ jq -Rnf day13_part2.jq day13.test.in
140
```

# Day 14

```
$ jq -Rnf day14_part1.jq day14.test.in
24
$ jq -Rnf day14_part2.jq day14.test.in
93
```
