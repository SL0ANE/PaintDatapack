scoreboard players remove #temp.0 loy.value 1

data modify storage paint:main BoardData.Source append from storage paint:main CurrentSource

execute if score #temp.0 loy.value matches 1.. run function paint:entity/board/method/boardinfo/zzz/7