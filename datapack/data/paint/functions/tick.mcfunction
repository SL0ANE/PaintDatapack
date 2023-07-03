execute as @a run function paint:player/tickstart
execute as @e[type=armor_stand,tag=entity.easel.summon] run function paint:entity/easel/summon/place
execute as @e[type=marker,tag=loy.obj] run function paint:ticklist/marker
execute as @e[type=text_display,tag=entity.paint.frame.display] run function paint:entity/frame/check
execute as @a run function paint:player/tickend

execute as @e[type=marker,tag=entity.paint.board.main,tag=entity.paint.board.edited] run function paint:entity/board/method/update/do