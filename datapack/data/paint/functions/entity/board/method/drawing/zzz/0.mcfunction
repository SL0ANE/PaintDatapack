teleport @s ~ ~ ~ ~ ~
data modify storage generic:main MathInput0 set from entity @s Pos[0]
function generic:math/splitdec/do
scoreboard players operation #temp.4 loy.value = #math.output.1 loy.value
scoreboard players operation #temp.4 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.5 loy.value = #math.output.2 loy.value
scoreboard players operation #temp.5 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.0 loy.value = #this.pos.x.int loy.value
scoreboard players operation #temp.0 loy.value -= #temp.4 loy.value
scoreboard players operation #temp.3 loy.value = #this.pos.x.dec loy.value
scoreboard players operation #temp.3 loy.value -= #temp.5 loy.value
scoreboard players operation #temp.0 loy.value *= #10000 loy.value
scoreboard players operation #temp.0 loy.value += #temp.3 loy.value
scoreboard players operation #temp.0 loy.value *= #_1 loy.value

teleport @s ~ ~ ~ ~ ~
data modify storage generic:main MathInput0 set from entity @s Pos[1]
function generic:math/splitdec/do
scoreboard players operation #temp.4 loy.value = #math.output.1 loy.value
scoreboard players operation #temp.4 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.5 loy.value = #math.output.2 loy.value
scoreboard players operation #temp.5 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.1 loy.value = #this.pos.y.int loy.value
scoreboard players operation #temp.1 loy.value -= #temp.4 loy.value
scoreboard players operation #temp.3 loy.value = #this.pos.y.dec loy.value
scoreboard players operation #temp.3 loy.value -= #temp.5 loy.value
scoreboard players operation #temp.1 loy.value *= #10000 loy.value
scoreboard players operation #temp.1 loy.value += #temp.3 loy.value
scoreboard players operation #temp.1 loy.value *= #_1 loy.value

teleport @s ~ ~ ~ ~ ~
data modify storage generic:main MathInput0 set from entity @s Pos[2]
function generic:math/splitdec/do
scoreboard players operation #temp.4 loy.value = #math.output.1 loy.value
scoreboard players operation #temp.4 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.5 loy.value = #math.output.2 loy.value
scoreboard players operation #temp.5 loy.value *= #math.output.0 loy.value
scoreboard players operation #temp.2 loy.value = #this.pos.z.int loy.value
scoreboard players operation #temp.2 loy.value -= #temp.4 loy.value
scoreboard players operation #temp.3 loy.value = #this.pos.z.dec loy.value
scoreboard players operation #temp.3 loy.value -= #temp.5 loy.value
scoreboard players operation #temp.2 loy.value *= #10000 loy.value
scoreboard players operation #temp.2 loy.value += #temp.3 loy.value
scoreboard players operation #temp.2 loy.value *= #_1 loy.value

# teleport @s ~ ~ ~ ~ ~
# tellraw @a [{"text":"画板坐标: "}, {"score":{"name":"#this.pos.x.int","objective":"loy.value"}},".",{"score":{"name":"#this.pos.x.dec","objective":"loy.value"}}," ",{"score":{"name":"#this.pos.y.int","objective":"loy.value"}},".",{"score":{"name":"#this.pos.y.dec","objective":"loy.value"}}," ",{"score":{"name":"#this.pos.z.int","objective":"loy.value"}},".",{"score":{"name":"#this.pos.z.dec","objective":"loy.value"}}]
# tellraw @a [{"text":"眼睛坐标: "}, {"nbt":"Pos","entity": "@s"}]
# tellraw @a [{"text":"玩家相对于画板原点的坐标: "}, {"score":{"name":"#temp.0","objective":"loy.value"}}," ",{"score":{"name":"#temp.1","objective":"loy.value"}}," ",{"score":{"name":"#temp.2","objective":"loy.value"}}]

teleport @s 0.0 0.0 0.0