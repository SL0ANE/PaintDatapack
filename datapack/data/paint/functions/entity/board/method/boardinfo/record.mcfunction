scoreboard players operation #this entity.board.uid = @s entity.board.uid
data modify storage paint:main BoardData set value {Length:0,Height:0,Source:[]}
execute store result storage paint:main BoardData.Length int 1 run scoreboard players get @s entity.board.length
execute store result storage paint:main BoardData.Height int 1 run scoreboard players get @s entity.board.height

execute at @s positioned ^-128 ^-65536 ^ as @e[type=block_display,tag=entity.paint.grid,sort=nearest] if score @s entity.board.uid = #this entity.board.uid run function paint:entity/board/method/boardinfo/zzz/0

execute at @s as @e[type=text_display,tag=entity.paint.board.display,distance=..0.1,sort=nearest] if score @s entity.board.uid = #this entity.board.uid run function paint:entity/board/method/boardinfo/zzz/8