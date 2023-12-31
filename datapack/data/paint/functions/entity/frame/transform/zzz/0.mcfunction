scoreboard players operation #temp.0 loy.value = #this entity.board.length
scoreboard players operation #temp.0 loy.value *= #10 loy.value
scoreboard players add #temp.0 loy.value 1
execute store result entity @s line_width float 1 run scoreboard players get #temp.0 loy.value

scoreboard players operation #temp.0 loy.value = #this entity.board.height
scoreboard players operation #temp.0 loy.value *= #1000 loy.value
scoreboard players operation #temp.0 loy.value *= #_1 loy.value
scoreboard players operation #temp.0 loy.value /= #32 loy.value
scoreboard players remove #temp.0 loy.value 25
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #temp.0 loy.value

scoreboard players operation #temp.0 loy.value = #this entity.board.length
scoreboard players operation #temp.0 loy.value *= #1000 loy.value
scoreboard players operation #temp.0 loy.value /= #16 loy.value
execute store result entity @s width float 0.001 run scoreboard players get #temp.0 loy.value

scoreboard players operation #temp.0 loy.value = #this entity.board.height
scoreboard players operation #temp.0 loy.value *= #1000 loy.value
scoreboard players operation #temp.0 loy.value /= #16 loy.value
execute store result entity @s height float 0.001 run scoreboard players get #temp.0 loy.value

data modify entity @s transformation.translation[2] set value 0.0625f

data modify entity @s text set from storage paint:main BoardData.Text

data modify entity @s transformation.scale set value [0.25f,0.25f,0.25f]
data modify entity @s background set value 0

scoreboard players operation @s entity.frame.uid = #this entity.frame.uid

teleport @s ~ ~-1024 ~ ~ ~

tag @s add loy.obj
tag @s add entity.paint.frame.display