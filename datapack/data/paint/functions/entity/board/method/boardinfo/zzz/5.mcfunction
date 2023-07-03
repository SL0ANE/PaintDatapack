execute if data storage paint:main Temp[0].count run function paint:entity/board/method/boardinfo/zzz/6
execute unless data storage paint:main Temp[0].count run data modify storage paint:main BoardData.Source append from storage paint:main Temp[0]

data remove storage paint:main Temp[0]
execute if data storage paint:main Temp[0] run function paint:entity/board/method/boardinfo/zzz/5