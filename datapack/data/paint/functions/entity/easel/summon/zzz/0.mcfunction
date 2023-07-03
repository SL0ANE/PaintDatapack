scoreboard players operation @s entity.easel.uid = #this entity.easel.uid

teleport @s ~ ~ ~ ~ ~

execute summon interaction run function paint:entity/easel/summon/zzz/1
execute positioned ~ ~1024 ~ summon item_display run function paint:entity/easel/summon/zzz/2

data modify entity @s data.attack.timestamp set from storage generic:main EntityOutput.attack.timestamp
execute store success score #interact.right loy.value run data modify entity @s data.interaction.timestamp set from storage generic:main EntityOutput.interaction.timestamp

tag @s add loy.obj
tag @s add entity.paint.easel
tag @s add entity.paint.easel.main