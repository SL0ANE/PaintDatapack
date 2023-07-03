data modify storage paint:main CurrentSource set value {color:0}
data modify storage paint:main CurrentSource.color set from storage paint:main Temp[0].color

execute store result score #temp.0 loy.value run data get storage paint:main Temp[0].count

execute if score #temp.0 loy.value matches 1.. run function paint:entity/board/method/boardinfo/zzz/7