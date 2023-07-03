scoreboard players set #temp.5 loy.value 0

execute if score #temp.3 loy.value matches 0 positioned ^ ^-0.03125 ^ if score #temp.5 loy.value < #this entity.board.height.half run function paint:entity/board/summon/zzz/5
execute if score #temp.3 loy.value matches 1 positioned ^ ^ ^ if score #temp.5 loy.value < #this entity.board.height.half run function paint:entity/board/summon/zzz/5