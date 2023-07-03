scoreboard players set #temp.1 loy.value 0
execute if score #temp.1 loy.value < #this entity.board.length run function paint:entity/board/summon/zzz/1

scoreboard players add #temp.0 loy.value 1

execute if score #temp.0 loy.value < #this entity.board.height positioned ^ ^0.0625 ^ run function paint:entity/board/summon/zzz/0