execute at @s as @e[type=block_display,tag=entity.paint.grid,distance=..8] if score @s entity.board.uid = #this player.current.grid.board.uid unless score @s entity.grid.color = #this entity.grid.color run function paint:player/tools/brush/zzz/1

# say 1