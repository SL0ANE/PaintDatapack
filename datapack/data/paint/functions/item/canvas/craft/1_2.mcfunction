clear @s knowledge_book
scoreboard players set #this entity.board.length 16
scoreboard players set #this entity.board.height 32
function paint:item/canvas/give
advancement revoke @s only paint:craft/canvas/1_2