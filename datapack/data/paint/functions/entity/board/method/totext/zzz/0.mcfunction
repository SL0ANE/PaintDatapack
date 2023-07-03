teleport @s ~ ~ ~
data modify entity @s text set value '{"selector":"@e[type=block_display,tag=entity.paint.grid,sort=furthest,predicate=paint:match_board_uid]","separator":{"text":"c","font":"custom:pixel"}}'
teleport @s 0.0 0.0 0.0