scoreboard players operation #this entity.board.uid = @s entity.board.uid

function generic:entity/ghost_text/summon
execute at @s as 00000000-0000-0000-0000-0dc900000000 positioned ^128 ^-65536 ^ run function paint:entity/board/method/totext/zzz/0

execute at @s as @e[type=text_display,tag=entity.paint.board.display,distance=..0.1] if score @s entity.board.uid = #this entity.board.uid run data modify entity @s text set from entity 00000000-0000-0000-0000-0dc900000000 text