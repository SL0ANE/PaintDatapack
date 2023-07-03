data modify storage paint:main BoardData.Source append from storage paint:main Temp[0]

scoreboard players operation #temp.0 loy.value = #this entity.grid.color
scoreboard players set #temp.1 loy.value 1