scoreboard players operation #this player.current.grid.board.uid = @s player.current.grid.board.uid
scoreboard players operation #this player.current.grid.index.x = @s player.current.grid.index.x
scoreboard players operation #this player.current.grid.index.y = @s player.current.grid.index.y

scoreboard players operation #this player.previous.grid.board.uid = @s player.previous.grid.board.uid
scoreboard players operation #this player.previous.grid.index.x = @s player.previous.grid.index.x
scoreboard players operation #this player.previous.grid.index.y = @s player.previous.grid.index.y

execute if score @s player.tool.id matches 0 run function paint:player/tools/brush/use