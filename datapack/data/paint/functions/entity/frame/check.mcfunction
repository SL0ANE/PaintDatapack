scoreboard players operation #this entity.frame.uid = @s entity.frame.uid
scoreboard players set #temp.0 loy.value 0
execute at @s as @e[type=item_frame,tag=entity.paint.frame.main,distance=..0.1] if score @s entity.frame.uid = #this entity.frame.uid run scoreboard players set #temp.0 loy.value 1
execute if score #temp.0 loy.value matches 0 run kill @s