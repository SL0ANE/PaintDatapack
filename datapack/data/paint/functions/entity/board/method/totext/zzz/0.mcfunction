teleport @s ~ ~ ~ ~ ~
data modify entity @s text set value '{"nbt":"CustomName","interpret": true,"entity":"@e[type=block_display,tag=entity.paint.grid,sort=furthest,predicate=paint:match_board_uid]","separator":{"text":"c"},"font":"custom:pixel"}'
data modify storage paint:main TempText set from entity @s text

execute in minecraft:overworld run teleport @s 0.0 0.0 0.0