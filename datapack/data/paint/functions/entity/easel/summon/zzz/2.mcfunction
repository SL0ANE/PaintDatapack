scoreboard players operation @s entity.easel.uid = #this entity.easel.uid

data modify entity @s item set value {id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:10000}}
data modify entity @s transformation.translation set value [0.0f,0.5f,0.0f]


teleport @s ~ ~-1024 ~ ~ ~

tag @s add loy.obj
tag @s add entity.paint.easel
tag @s add entity.paint.easel.model