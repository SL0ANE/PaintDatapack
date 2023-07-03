scoreboard players operation #temp.0 loy.value = @s entity.board.length
scoreboard players operation #temp.0 loy.value /= #16 loy.value

scoreboard players operation #temp.1 loy.value = @s entity.board.height
scoreboard players operation #temp.1 loy.value /= #16 loy.value

data modify storage paint:main CanvasLore set value []
execute in overworld run data modify block 29999984 0 0 front_text.messages[0] set value '[{"score":{"objective": "loy.value","name": "#temp.0"},"color":"white","italic": false},{"text":"x","color":"white","italic": false},{"score":{"objective": "loy.value","name": "#temp.1"},"color":"white","italic": false}]'
execute in overworld run data modify storage paint:main CanvasLore append from block 29999984 0 0 front_text.messages[0]

function paint:entity/board/method/boardinfo/record
function paint:entity/board/method/boardinfo/compress
function paint:entity/board/destory/do
execute at @s run playsound entity.item_frame.break block @a ~ ~ ~ 1 1 0

loot spawn ~ ~0.9 ~ loot paint:canvas