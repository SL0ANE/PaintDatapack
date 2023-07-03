scoreboard players operation #this entity.easel.uid = @s entity.easel.uid

scoreboard players set #interact.left loy.value 0
scoreboard players set #interact.right loy.value 0
execute at @s positioned ~ ~ ~ as @e[type=interaction,tag=entity.paint.easel.interact,distance=..0.1] if score @s entity.easel.uid = #this entity.easel.uid run function generic:entity/interaction/getinfo/do
execute store success score #interact.left loy.value run data modify entity @s data.attack.timestamp set from storage generic:main EntityOutput.attack.timestamp
execute store success score #interact.right loy.value run data modify entity @s data.interaction.timestamp set from storage generic:main EntityOutput.interaction.timestamp

execute if score #interact.left loy.value matches 1 run function paint:entity/easel/zzz/0
execute if score #interact.right loy.value matches 1 run function paint:entity/easel/zzz/1