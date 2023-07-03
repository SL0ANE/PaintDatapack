scoreboard players operation #this entity.frame.uid = #global entity.frame.uid
scoreboard players add #global entity.frame.uid 1

data modify storage paint:main BoardData set from entity @s Item.tag.BoardData

execute store result score #this entity.board.length run data get storage paint:main BoardData.Length 1
execute store result score #this entity.board.height run data get storage paint:main BoardData.Height 1

execute at @s positioned ~ ~1024 ~ summon text_display run function paint:entity/frame/transform/zzz/0

scoreboard players operation @s entity.frame.uid = #this entity.frame.uid

tag @s add loy.obj
tag @s add entity.paint.frame.main