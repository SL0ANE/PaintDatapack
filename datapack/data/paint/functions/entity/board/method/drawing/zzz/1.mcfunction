# 获取索引
scoreboard players operation #math.input.0 loy.value = #math.output.0 loy.value
scoreboard players operation #math.input.1 loy.value = #math.output.1 loy.value
scoreboard players operation #math.input.2 loy.value = #math.output.2 loy.value
scoreboard players operation #math.input.3 loy.value = #this entity.board.axis.left.x
scoreboard players operation #math.input.4 loy.value = #this entity.board.axis.left.y
scoreboard players operation #math.input.5 loy.value = #this entity.board.axis.left.z
function generic:math/vector/dot/do

scoreboard players operation #this entity.grid.index.x = #math.output.0 loy.value
scoreboard players remove #this entity.grid.index.x 80
scoreboard players operation #this entity.grid.index.x += #this entity.board.length.half
scoreboard players operation #this entity.grid.index.x *= #16 loy.value
scoreboard players operation #this entity.grid.index.x /= #10000 loy.value

scoreboard players operation #math.input.3 loy.value = #this entity.board.axis.up.x
scoreboard players operation #math.input.4 loy.value = #this entity.board.axis.up.y
scoreboard players operation #math.input.5 loy.value = #this entity.board.axis.up.z
function generic:math/vector/dot/do

scoreboard players operation #this entity.grid.index.y = #math.output.0 loy.value
scoreboard players add #this entity.grid.index.y 40
scoreboard players operation #this entity.grid.index.y += #this entity.board.height.half
scoreboard players operation #this entity.grid.index.y *= #16 loy.value
scoreboard players operation #this entity.grid.index.y /= #10000 loy.value

function paint:entity/board/method/drawing/zzz/2

#execute as @e[type=block_display,tag=entity.paint.grid,distance=..1] if score @s entity.board.uid = #this entity.board.uid if score @s entity.grid.index.x = #this entity.grid.index.x if score @s entity.grid.index.y = #this entity.grid.index.y run function paint:entity/grid/method/setcolor/do