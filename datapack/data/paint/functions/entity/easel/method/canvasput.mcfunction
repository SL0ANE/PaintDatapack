scoreboard players set #temp.0 loy.value 0
execute at @s as @e[type=interaction,tag=entity.paint.easel.interact,distance=..0.1] if score @s entity.easel.uid = #this entity.easel.uid run function paint:entity/easel/method/zzz/1
execute if score #temp.0 loy.value matches 0 run return 0

function paint:entity/board/method/boardinfo/decompress
function paint:entity/easel/method/addboard