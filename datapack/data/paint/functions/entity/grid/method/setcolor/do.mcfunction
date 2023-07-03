scoreboard players operation @s entity.grid.color = #this entity.grid.color

scoreboard players operation #math.input.0 loy.value = #this entity.grid.color
function generic:math/rgb/decode
scoreboard players operation #math.input.0 loy.value = #math.output.0 loy.value
scoreboard players operation #math.input.1 loy.value = #math.output.1 loy.value
scoreboard players operation #math.input.2 loy.value = #math.output.2 loy.value
function generic:math/rgb/tohalf

scoreboard players operation #text.input.0 loy.value = #math.output.0 loy.value
scoreboard players operation #text.input.1 loy.value = #math.output.1 loy.value
scoreboard players operation #text.input.2 loy.value = #math.output.2 loy.value
data modify storage generic:main TextInput0 set value '{"text":"a"}'
execute in minecraft:overworld run function generic:text/setcolor/do
data modify entity @s CustomName set from storage generic:main TextOutput