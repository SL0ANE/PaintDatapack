execute store success score #temp.1 loy.value run data get entity @s Item.tag.BoardData.Text
execute if entity @s[tag=!entity.paint.frame.main] if score #temp.1 loy.value matches 1 run function paint:entity/frame/transform/do
execute if entity @s[tag=entity.paint.frame.main] if score #temp.1 loy.value matches 0 run function paint:entity/frame/transform/undo