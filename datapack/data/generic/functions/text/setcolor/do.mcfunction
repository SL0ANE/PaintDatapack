# 作用是把TextInput0里的文本上个色
# 输入是half的rgb值

scoreboard players operation #text.temp.0 loy.value = #text.input.0 loy.value
scoreboard players operation #text.temp.0 loy.value *= #256 loy.value

scoreboard players operation #text.temp.1 loy.value = #text.input.1 loy.value
scoreboard players operation #text.temp.1 loy.value *= #16 loy.value
scoreboard players operation #text.temp.0 loy.value += #text.temp.1 loy.value
scoreboard players operation #text.temp.0 loy.value += #text.input.2 loy.value

function generic:text/setcolor/zzz/0

data modify storage generic:main TextOutput set from block 29999984 0 0 front_text.messages[0]