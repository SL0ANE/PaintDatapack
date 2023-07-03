data modify storage paint:main BoardData.Source append value {color:0}
execute store result storage paint:main BoardData.Source[-1].color int 1 run scoreboard players get @s entity.grid.color