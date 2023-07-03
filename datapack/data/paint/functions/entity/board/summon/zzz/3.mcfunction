scoreboard players add #temp.4 loy.value 1

execute if score #temp.4 loy.value = #this entity.board.length.half run function paint:entity/board/summon/zzz/4
execute if score #temp.4 loy.value < #this entity.board.length.half positioned ^-0.0625 ^ ^ run function paint:entity/board/summon/zzz/3