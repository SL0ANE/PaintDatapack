scoreboard players set #temp.0 loy.value 0
execute if entity @s[tag=easel.has.board] run function paint:entity/easel/method/canvasget
execute unless entity @s[tag=easel.has.board] if score #temp.0 loy.value matches 0 run function paint:entity/easel/destory/withsound