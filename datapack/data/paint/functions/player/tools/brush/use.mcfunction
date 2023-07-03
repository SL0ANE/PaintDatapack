# 1000倍
function paint:player/tools/brush/getsize
function paint:player/tools/brush/getcolor

execute if score #this entity.grid.color matches -1 run return 0


scoreboard players operation #temp.0 loy.value = #this player.tool.size
scoreboard players operation #temp.0 loy.value *= #this player.tool.size

# tellraw @a {"score":{"name":"#this","objective":"player.current.grid.board.uid"}}
scoreboard players set #temp.13 loy.value 0
execute at @s as @e[type=marker,tag=entity.paint.board.main,distance=..10] if score @s entity.board.uid = #this player.current.grid.board.uid run function paint:player/tools/brush/zzz/0

execute at @s if score #temp.13 loy.value matches 1 as @e[type=marker,distance=..8,tag=entity.paint.board.main] if score @s entity.board.uid = #this player.current.grid.board.uid run tag @s add entity.paint.board.edited
execute at @s if score #temp.13 loy.value matches 1 run playsound minecraft:item.brush.brushing.generic player @a ~ ~ ~ 0.25 1 0