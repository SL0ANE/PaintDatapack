scoreboard players operation @s player.previous.grid.board.uid = @s player.current.grid.board.uid
scoreboard players operation @s player.previous.grid.index.x = @s player.current.grid.index.x
scoreboard players operation @s player.previous.grid.index.y = @s player.current.grid.index.y
scoreboard players set @s player.previous.grid.timer 5

scoreboard players set @s player.current.grid.board.uid -1
scoreboard players set @s player.current.grid.distance 2147483647