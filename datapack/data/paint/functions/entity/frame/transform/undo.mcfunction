scoreboard players operation #this entity.frame.uid = @s entity.frame.uid

execute at @s as @e[type=text_display,tag=entity.paint.frame.display] if score @s entity.frame.uid = #this entity.frame.uid run kill @s

scoreboard players reset @s entity.frame.uid

tag @s remove loy.obj
tag @s remove entity.paint.frame.main