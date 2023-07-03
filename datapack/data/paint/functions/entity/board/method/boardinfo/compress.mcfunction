#记录上个颜色
scoreboard players set #temp.0 loy.value -1
#记录连续颜色数量
scoreboard players set #temp.1 loy.value 1

execute store result score #this entity.board.length run data get storage paint:main BoardData.Length
execute store result score #this entity.board.height run data get storage paint:main BoardData.Height

scoreboard players set #this entity.grid.index.x 0
scoreboard players set #this entity.grid.index.y 0

data modify storage paint:main Temp set from storage paint:main BoardData.Source
data modify storage paint:main BoardData.Source set value []

execute if data storage paint:main Temp[0] run function paint:entity/board/method/boardinfo/zzz/1