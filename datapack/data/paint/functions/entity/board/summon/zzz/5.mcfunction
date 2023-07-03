scoreboard players add #temp.5 loy.value 1

execute if score #temp.5 loy.value = #this entity.board.height.half run function paint:entity/board/summon/zzz/6
execute if score #temp.5 loy.value < #this entity.board.height.half positioned ^ ^-0.0625 ^ run function paint:entity/board/summon/zzz/5