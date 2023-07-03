execute at @s unless entity @a[distance=..8,scores={player.tool.id=0..,loy.right.click=1..}] run return 0

scoreboard players operation #this entity.board.axis.left.x = @s entity.board.axis.left.x
scoreboard players operation #this entity.board.axis.left.y = @s entity.board.axis.left.y
scoreboard players operation #this entity.board.axis.left.z = @s entity.board.axis.left.z
scoreboard players operation #this entity.board.axis.up.x = @s entity.board.axis.up.x
scoreboard players operation #this entity.board.axis.up.y = @s entity.board.axis.up.y
scoreboard players operation #this entity.board.axis.up.z = @s entity.board.axis.up.z
scoreboard players operation #this entity.board.axis.front.x = @s entity.board.axis.front.x
scoreboard players operation #this entity.board.axis.front.y = @s entity.board.axis.front.y
scoreboard players operation #this entity.board.axis.front.z = @s entity.board.axis.front.z
scoreboard players operation #this entity.board.uid = @s entity.board.uid
scoreboard players operation #this entity.board.length = @s entity.board.length
scoreboard players operation #this entity.board.height = @s entity.board.height
scoreboard players operation #this entity.board.length.half = @s entity.board.length.half
scoreboard players operation #this entity.board.height.half = @s entity.board.height.half

data modify storage generic:main MathInput0 set from entity @s Pos[0]
function generic:math/splitdec/do
scoreboard players operation #this.pos.x.int loy.value = #math.output.1 loy.value
scoreboard players operation #this.pos.x.int loy.value *= #math.output.0 loy.value
scoreboard players operation #this.pos.x.dec loy.value = #math.output.2 loy.value
scoreboard players operation #this.pos.x.dec loy.value *= #math.output.0 loy.value
data modify storage generic:main MathInput0 set from entity @s Pos[1]
function generic:math/splitdec/do
scoreboard players operation #this.pos.y.int loy.value = #math.output.1 loy.value
scoreboard players operation #this.pos.y.int loy.value *= #math.output.0 loy.value
scoreboard players operation #this.pos.y.dec loy.value = #math.output.2 loy.value
scoreboard players operation #this.pos.y.dec loy.value *= #math.output.0 loy.value
data modify storage generic:main MathInput0 set from entity @s Pos[2]
function generic:math/splitdec/do
scoreboard players operation #this.pos.z.int loy.value = #math.output.1 loy.value
scoreboard players operation #this.pos.z.int loy.value *= #math.output.0 loy.value
scoreboard players operation #this.pos.z.dec loy.value = #math.output.2 loy.value
scoreboard players operation #this.pos.z.dec loy.value *= #math.output.0 loy.value

execute at @s as @a[distance=..8,scores={player.tool.id=0..}] if score @s loy.right.click matches 1.. run function paint:entity/board/method/drawing/detect