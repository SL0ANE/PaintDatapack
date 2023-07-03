execute if score #this player.previous.grid.index.x = #this player.current.grid.index.x if score #this player.previous.grid.index.y = #this player.current.grid.index.y run return 0

# 获取从上一次到当前位置的向量
scoreboard players operation #this entity.grid.index.x = @s entity.grid.index.x
scoreboard players operation #this entity.grid.index.y = @s entity.grid.index.y

scoreboard players operation #temp.1 loy.value = #this entity.grid.index.x
scoreboard players operation #temp.2 loy.value = #this entity.grid.index.y
scoreboard players operation #temp.1 loy.value -= #this player.previous.grid.index.x
scoreboard players operation #temp.2 loy.value -= #this player.previous.grid.index.y

# 获取线段的向量
scoreboard players operation #temp.3 loy.value = #this player.current.grid.index.x
scoreboard players operation #temp.4 loy.value = #this player.current.grid.index.y
scoreboard players operation #temp.3 loy.value -= #this player.previous.grid.index.x
scoreboard players operation #temp.4 loy.value -= #this player.previous.grid.index.y

# 获取线段的法向（未归一化）
scoreboard players operation #temp.5 loy.value = #temp.4 loy.value
scoreboard players operation #temp.6 loy.value = #temp.3 loy.value
scoreboard players operation #temp.6 loy.value *= #_1 loy.value

# 获取线段的长度的平方（与法向长度一致）
scoreboard players operation #temp.7 loy.value = #temp.3 loy.value
scoreboard players operation #temp.7 loy.value *= #temp.3 loy.value
scoreboard players operation #temp.8 loy.value = #temp.4 loy.value
scoreboard players operation #temp.8 loy.value *= #temp.4 loy.value
scoreboard players operation #temp.7 loy.value += #temp.8 loy.value

# 获取点到线段所在直线的距离的平方
scoreboard players operation #temp.8 loy.value = #temp.1 loy.value
scoreboard players operation #temp.8 loy.value *= #temp.5 loy.value
scoreboard players operation #temp.9 loy.value = #temp.2 loy.value
scoreboard players operation #temp.9 loy.value *= #temp.6 loy.value
scoreboard players operation #temp.8 loy.value += #temp.9 loy.value
scoreboard players operation #temp.8 loy.value *= #temp.8 loy.value
scoreboard players operation #temp.8 loy.value *= #100 loy.value
scoreboard players operation #temp.8 loy.value /= #temp.7 loy.value

# 超出距离了 那就忽略
# tellraw @a {"score":{"name":"#temp.8","objective":"loy.value"}}
execute if score #temp.8 loy.value > #temp.0 loy.value run return 0

# 获取线段与起点到当前位置的连线的点乘
scoreboard players operation #temp.8 loy.value = #temp.1 loy.value
scoreboard players operation #temp.8 loy.value *= #temp.3 loy.value
scoreboard players operation #temp.9 loy.value = #temp.2 loy.value
scoreboard players operation #temp.9 loy.value *= #temp.4 loy.value
scoreboard players operation #temp.8 loy.value += #temp.9 loy.value

# 如果点乘结果是负值 则计算他和起点距离的平方 若在距离外 则不合法
scoreboard players set #temp.10 loy.value 1
execute if score #temp.8 loy.value matches ..-1 store result score #temp.10 loy.value run function paint:player/tools/brush/zzz/4
execute if score #temp.10 loy.value matches 0 run return 0

# 获取起点到当前位置的连线到线段上的投影的平方
scoreboard players operation #temp.9 loy.value = #temp.8 loy.value
scoreboard players operation #temp.9 loy.value *= #temp.8 loy.value
scoreboard players operation #temp.9 loy.value /= #temp.7 loy.value

scoreboard players set #temp.10 loy.value 1
execute if score #temp.9 loy.value >= #temp.7 loy.value store result score #temp.10 loy.value run function paint:player/tools/brush/zzz/5
execute if score #temp.10 loy.value matches 0 run return 0


function paint:entity/grid/method/setcolor/do
scoreboard players set #temp.13 loy.value 1