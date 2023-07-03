execute at @s as @e[type=marker,tag=entity.paint.board.main] if score @s entity.easel.uid = #this entity.easel.uid run function paint:entity/easel/method/zzz/0
scoreboard players set #temp.0 loy.value 1
tag @s remove easel.has.board