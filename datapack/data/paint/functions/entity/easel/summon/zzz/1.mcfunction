scoreboard players operation @s entity.easel.uid = #this entity.easel.uid

data modify entity @s width set value 0.75f
data modify entity @s height set value 1.75f

function generic:entity/interaction/getinfo/do

teleport @s ~ ~ ~ ~ ~

tag @s add loy.obj
tag @s add entity.paint.easel
tag @s add entity.paint.easel.interact