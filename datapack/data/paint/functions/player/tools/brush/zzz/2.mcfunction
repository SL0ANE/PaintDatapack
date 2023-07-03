scoreboard players operation #this entity.grid.index.x = @s entity.grid.index.x
scoreboard players operation #this entity.grid.index.y = @s entity.grid.index.y

scoreboard players operation #temp.1 loy.value = #this entity.grid.index.x
scoreboard players operation #temp.1 loy.value -= #this player.current.grid.index.x
scoreboard players operation #temp.1 loy.value *= #temp.1 loy.value

scoreboard players operation #temp.2 loy.value = #this entity.grid.index.y
scoreboard players operation #temp.2 loy.value -= #this player.current.grid.index.y
scoreboard players operation #temp.2 loy.value *= #temp.2 loy.value

scoreboard players operation #temp.1 loy.value += #temp.2 loy.value

scoreboard players operation #temp.1 loy.value *= #100 loy.value

execute unless score #temp.1 loy.value <= #temp.0 loy.value run return 0

function paint:entity/grid/method/setcolor/do
scoreboard players set #temp.13 loy.value 1