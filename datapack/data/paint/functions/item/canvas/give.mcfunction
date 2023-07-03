scoreboard players operation #temp.0 loy.value = #this entity.board.length
scoreboard players operation #temp.0 loy.value /= #16 loy.value

scoreboard players operation #temp.1 loy.value = #this entity.board.height
scoreboard players operation #temp.1 loy.value /= #16 loy.value

data modify storage paint:main CanvasLore set value []
execute in overworld run data modify block 29999984 0 0 front_text.messages[0] set value '[{"score":{"objective": "loy.value","name": "#temp.0"},"color":"white","italic": false},{"text":"x","color":"white","italic": false},{"score":{"objective": "loy.value","name": "#temp.1"},"color":"white","italic": false}]'
execute in overworld run data modify storage paint:main CanvasLore append from block 29999984 0 0 front_text.messages[0]
function paint:item/canvas/pattern/default
loot give @s loot paint:canvas