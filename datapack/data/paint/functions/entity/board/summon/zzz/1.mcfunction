scoreboard players operation #this entity.grid.index.x = #temp.1 loy.value
scoreboard players operation #this entity.grid.index.y = #temp.0 loy.value
execute store result score #this entity.grid.color run data get storage paint:main Temp[0].color 1
data remove storage paint:main Temp[0]

function paint:entity/grid/summon/do

scoreboard players add #temp.1 loy.value 1

execute if score #temp.1 loy.value < #this entity.board.length positioned ^0.0625 ^ ^ run function paint:entity/board/summon/zzz/1