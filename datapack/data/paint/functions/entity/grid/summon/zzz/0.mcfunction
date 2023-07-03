data modify entity @s view_range set value 0

scoreboard players operation @s entity.grid.index.x = #this entity.grid.index.x
scoreboard players operation @s entity.grid.index.y = #this entity.grid.index.y

scoreboard players operation @s entity.board.uid = #this entity.board.uid

function paint:entity/grid/method/setcolor/do


tag @s add loy.obj
tag @s add entity.paint.grid