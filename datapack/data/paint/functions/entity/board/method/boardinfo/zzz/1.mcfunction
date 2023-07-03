execute store result score #this entity.grid.color run data get storage paint:main Temp[0].color
execute if score #this entity.grid.color = #temp.0 loy.value run function paint:entity/board/method/boardinfo/zzz/3
execute unless score #this entity.grid.color = #temp.0 loy.value run function paint:entity/board/method/boardinfo/zzz/4

data remove storage paint:main Temp[0]
scoreboard players add #this entity.grid.index.x 1
execute if score #this entity.grid.index.x >= #this entity.board.length run function paint:entity/board/method/boardinfo/zzz/2
execute if data storage paint:main Temp[0] run function paint:entity/board/method/boardinfo/zzz/1