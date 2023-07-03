scoreboard players set #this entity.easel.uid -1
scoreboard players operation #this entity.easel.uid = @s entity.easel.uid

scoreboard players operation #this entity.board.uid = #global entity.board.uid
scoreboard players add #global entity.board.uid 1

execute store result score #this entity.board.length run data get storage paint:main BoardData.Length 1
execute store result score #this entity.board.height run data get storage paint:main BoardData.Height 1

scoreboard players operation #this entity.board.length.half = #this entity.board.length
scoreboard players add #this entity.board.length.half 1
scoreboard players operation #this entity.board.length.half /= #2 loy.value
scoreboard players operation #this entity.board.height.half = #this entity.board.height
scoreboard players add #this entity.board.height.half 1
scoreboard players operation #this entity.board.height.half /= #2 loy.value
scoreboard players operation #temp.2 loy.value = #this entity.board.length
scoreboard players operation #temp.2 loy.value %= #2 loy.value
scoreboard players operation #temp.3 loy.value = #this entity.board.height
scoreboard players operation #temp.3 loy.value %= #2 loy.value

data modify storage paint:main Temp set from storage paint:main BoardData.Source

scoreboard players set #temp.4 loy.value 0
execute if score #temp.2 loy.value matches 0 positioned ^-0.03125 ^ ^ if score #temp.4 loy.value < #this entity.board.length.half run function paint:entity/board/summon/zzz/3
execute if score #temp.2 loy.value matches 1 positioned ^ ^ ^ if score #temp.4 loy.value < #this entity.board.length.half run function paint:entity/board/summon/zzz/3

execute positioned ~ ~1024 ~ summon text_display run function paint:entity/board/summon/zzz/7

execute summon marker run function paint:entity/board/summon/zzz/2