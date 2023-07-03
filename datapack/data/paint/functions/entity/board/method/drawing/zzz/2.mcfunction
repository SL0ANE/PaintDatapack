function paint:entity/board/method/drawing/zzz/3
execute if score #temp.0 loy.value matches 0 run return 0

# tellraw @a [{"text":"索引: "}, {"score":{"name":"#this","objective":"entity.grid.index.x"}}," ",{"score":{"name":"#this","objective":"entity.grid.index.y"}}]

scoreboard players operation @s player.current.grid.board.uid = #this entity.board.uid
scoreboard players operation @s player.current.grid.index.x = #this entity.grid.index.x
scoreboard players operation @s player.current.grid.index.y = #this entity.grid.index.y
scoreboard players operation @s player.current.grid.distance = #math.temp.10 loy.value