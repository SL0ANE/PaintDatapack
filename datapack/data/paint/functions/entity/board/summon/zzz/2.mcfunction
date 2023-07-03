function generic:math/vector/getfromrotation/do

scoreboard players operation @s entity.board.axis.left.x = #math.output.0 loy.value
scoreboard players operation @s entity.board.axis.left.y = #math.output.1 loy.value
scoreboard players operation @s entity.board.axis.left.z = #math.output.2 loy.value
scoreboard players operation @s entity.board.axis.up.x = #math.output.3 loy.value
scoreboard players operation @s entity.board.axis.up.y = #math.output.4 loy.value
scoreboard players operation @s entity.board.axis.up.z = #math.output.5 loy.value
scoreboard players operation @s entity.board.axis.front.x = #math.output.6 loy.value
scoreboard players operation @s entity.board.axis.front.y = #math.output.7 loy.value
scoreboard players operation @s entity.board.axis.front.z = #math.output.8 loy.value

scoreboard players operation @s entity.board.uid = #this entity.board.uid
scoreboard players operation @s entity.easel.uid = #this entity.easel.uid

scoreboard players operation @s entity.board.length = #this entity.board.length
scoreboard players operation @s entity.board.height = #this entity.board.height

scoreboard players operation @s entity.board.height.half = #this entity.board.height
scoreboard players operation @s entity.board.height.half *= #10000 loy.value
scoreboard players operation @s entity.board.height.half /= #32 loy.value
scoreboard players operation @s entity.board.length.half = #this entity.board.length
scoreboard players operation @s entity.board.length.half *= #10000 loy.value
scoreboard players operation @s entity.board.length.half /= #32 loy.value

teleport @s ~ ~ ~ ~ ~

tag @s add loy.obj
tag @s add entity.paint.board.main

function paint:entity/board/method/totext/do