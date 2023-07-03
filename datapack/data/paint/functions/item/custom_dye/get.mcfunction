scoreboard players operation #math.input.0 loy.value = #customdye.r loy.value
scoreboard players operation #math.input.1 loy.value = #customdye.g loy.value
scoreboard players operation #math.input.2 loy.value = #customdye.b loy.value

function generic:math/rgb/encode
execute store result storage paint:main InputColor int 1 run scoreboard players get #math.output.0 loy.value

loot give @s loot paint:custom_dye