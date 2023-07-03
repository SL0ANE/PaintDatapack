scoreboard players operation #this entity.easel.uid = @s entity.easel.uid
execute at @s as @e[type=item_display,tag=entity.paint.easel.model,distance=..0.1] if score @s entity.easel.uid = #this entity.easel.uid run kill @s
execute at @s as @e[type=interaction,tag=entity.paint.easel.interact,distance=..0.1] if score @s entity.easel.uid = #this entity.easel.uid run kill @s

kill @s