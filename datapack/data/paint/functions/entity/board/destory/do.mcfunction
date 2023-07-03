scoreboard players operation #this entity.board.uid = @s entity.board.uid
execute at @s as @e[type=block_display,tag=entity.paint.grid,distance=..5] if score @s entity.board.uid = #this entity.board.uid run function paint:entity/grid/destory/do
execute at @s as @e[type=text_display,tag=entity.paint.board.display,distance=..5] if score @s entity.board.uid = #this entity.board.uid run kill @s

kill @s