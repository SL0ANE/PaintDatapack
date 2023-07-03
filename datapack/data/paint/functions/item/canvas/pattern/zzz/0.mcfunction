data modify storage paint:main BoardData.Source append value {color:15330027}
data modify storage paint:main BoardData.Source append from storage paint:main Temp[1]
data modify storage paint:main BoardData.Source append value {color:15330027}

scoreboard players remove #temp.0 loy.value 1
execute if score #temp.0 loy.value matches 1.. run function paint:item/canvas/pattern/zzz/0