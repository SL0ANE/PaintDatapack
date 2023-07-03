scoreboard players operation #temp.11 loy.value = #temp.1 loy.value
scoreboard players operation #temp.11 loy.value *= #temp.1 loy.value
scoreboard players operation #temp.12 loy.value = #temp.2 loy.value
scoreboard players operation #temp.12 loy.value *= #temp.2 loy.value
scoreboard players operation #temp.11 loy.value += #temp.12 loy.value
scoreboard players operation #temp.11 loy.value *= #100 loy.value

execute if score #temp.11 loy.value > #temp.0 loy.value run return 0
execute unless score #temp.11 loy.value > #temp.0 loy.value run return 1