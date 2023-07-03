function generic:entity/ghost/summon

execute at @s anchored eyes positioned ^ ^ ^ as 00000000-0000-0000-0000-0dc800000000 run function paint:entity/board/method/drawing/zzz/0

scoreboard players operation #math.input.0 loy.value = #temp.0 loy.value
scoreboard players operation #math.input.1 loy.value = #temp.1 loy.value
scoreboard players operation #math.input.2 loy.value = #temp.2 loy.value

execute at @s run function generic:math/vector/getfromrotation/do
scoreboard players operation #math.input.3 loy.value = #math.output.6 loy.value
scoreboard players operation #math.input.4 loy.value = #math.output.7 loy.value
scoreboard players operation #math.input.5 loy.value = #math.output.8 loy.value

scoreboard players operation #math.input.6 loy.value = #this entity.board.axis.front.x
scoreboard players operation #math.input.7 loy.value = #this entity.board.axis.front.y
scoreboard players operation #math.input.8 loy.value = #this entity.board.axis.front.z

#tellraw @a [{"text":"眼睛坐标: "}, {"score":{"name":"#math.input.0","objective":"loy.value"}}," ",{"score":{"name":"#math.input.1","objective":"loy.value"}}," ",{"score":{"name":"#math.input.2","objective":"loy.value"}}]
#tellraw @a [{"text":"射线方向: "}, {"score":{"name":"#math.input.3","objective":"loy.value"}}," ",{"score":{"name":"#math.input.4","objective":"loy.value"}}," ",{"score":{"name":"#math.input.5","objective":"loy.value"}}]
#tellraw @a [{"text":"法线方向: "}, {"score":{"name":"#math.input.6","objective":"loy.value"}}," ",{"score":{"name":"#math.input.7","objective":"loy.value"}}," ",{"score":{"name":"#math.input.8","objective":"loy.value"}}]

execute store result score #temp.0 loy.value run function generic:math/vector/getfacepoint/do

# execute if score #temp.0 loy.value matches 1 run tellraw @a [{"text":"交点相对坐标: "}, {"score":{"name":"#math.output.0","objective":"loy.value"}}," ",{"score":{"name":"#math.output.1","objective":"loy.value"}}," ",{"score":{"name":"#math.output.2","objective":"loy.value"}}]

execute if score #temp.0 loy.value matches 1 run function paint:entity/board/method/drawing/zzz/1