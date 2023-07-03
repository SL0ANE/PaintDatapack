scoreboard players set @s player.tool.id -1
execute if data entity @s SelectedItem.tag.paintToolId store result score @s player.tool.id run data get entity @s SelectedItem.tag.paintToolId 1
execute if data entity @s Inventory[{Slot:-106b}].tag.paintToolId store result score @s player.tool.id run data get entity @s Inventory[{Slot:-106b}].tag.paintToolId 1

execute if score @s player.previous.grid.timer matches 1.. run scoreboard players remove @s player.previous.grid.timer 1
execute if score @s player.current.grid.board.uid matches 0.. run function paint:player/zzz/0

execute if score @s player.previous.grid.timer matches 0 run scoreboard players set @s player.previous.grid.board.uid -1


execute at @s as @e[type=#paint:item_frame,distance=..8] run function paint:entity/frame/tick