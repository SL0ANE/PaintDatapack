data modify storage paint:main Temp set from storage paint:main BoardData.Source
data modify storage paint:main BoardData.Source set value []

execute if data storage paint:main Temp[0] run function paint:entity/board/method/boardinfo/zzz/5