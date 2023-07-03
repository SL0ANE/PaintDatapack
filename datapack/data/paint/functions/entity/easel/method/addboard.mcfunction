execute store result score #temp.6 loy.value run data get storage paint:main BoardData.Height 1

execute unless entity @s[tag=easel.has.board] at @s positioned ^ ^0.81 ^0.23 rotated ~ ~-22.5 run function paint:entity/easel/method/zzz/5

tag @s add easel.has.board