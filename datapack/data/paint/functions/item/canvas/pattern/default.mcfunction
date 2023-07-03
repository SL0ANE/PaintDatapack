data modify storage paint:main BoardData set value {Length:0,Height:0,Source:[]}
execute store result storage paint:main BoardData.Length int 1 run scoreboard players get #this entity.board.length
execute store result storage paint:main BoardData.Height int 1 run scoreboard players get #this entity.board.height

data modify storage paint:main Temp set value [{color:15330027,count:0},{color:16579826,count:0}]
execute store result storage paint:main Temp[0].count int 1 run scoreboard players get #this entity.board.length
scoreboard players operation #temp.0 loy.value = #this entity.board.length
scoreboard players remove #temp.0 loy.value 2
execute store result storage paint:main Temp[1].count int 1 run scoreboard players get #temp.0 loy.value

data modify storage paint:main BoardData.Source append from storage paint:main Temp[0]

scoreboard players operation #temp.0 loy.value = #this entity.board.height
scoreboard players remove #temp.0 loy.value 2

execute if score #temp.0 loy.value matches 1.. run function paint:item/canvas/pattern/zzz/0

data modify storage paint:main BoardData.Source append from storage paint:main Temp[0]