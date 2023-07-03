scoreboard objectives add entity.grid.index.x dummy
scoreboard objectives add entity.grid.index.y dummy
scoreboard objectives add entity.grid.color dummy

scoreboard objectives add entity.frame.uid dummy

scoreboard objectives add entity.easel.uid dummy

scoreboard objectives add entity.board.uid dummy
scoreboard objectives add entity.board.length dummy
scoreboard objectives add entity.board.height dummy
scoreboard objectives add entity.board.length.half dummy
scoreboard objectives add entity.board.height.half dummy

scoreboard objectives add entity.board.axis.left.x dummy
scoreboard objectives add entity.board.axis.left.y dummy
scoreboard objectives add entity.board.axis.left.z dummy
scoreboard objectives add entity.board.axis.up.x dummy
scoreboard objectives add entity.board.axis.up.y dummy
scoreboard objectives add entity.board.axis.up.z dummy
scoreboard objectives add entity.board.axis.front.x dummy
scoreboard objectives add entity.board.axis.front.y dummy
scoreboard objectives add entity.board.axis.front.z dummy

scoreboard objectives add player.current.grid.board.uid dummy
scoreboard objectives add player.current.grid.index.x dummy
scoreboard objectives add player.current.grid.index.y dummy
scoreboard objectives add player.current.grid.distance dummy
scoreboard objectives add player.previous.grid.board.uid dummy
scoreboard objectives add player.previous.grid.index.x dummy
scoreboard objectives add player.previous.grid.index.y dummy
scoreboard objectives add player.previous.grid.timer dummy
scoreboard objectives add player.tool.id dummy
scoreboard objectives add player.tool.size dummy

scoreboard players set #paint.tools.step loy.value 500

gamerule maxCommandChainLength 2147483647

# 临时
scoreboard players set #this entity.board.length 16
scoreboard players set #this entity.board.height 16
scoreboard players set #this entity.grid.color 16777215