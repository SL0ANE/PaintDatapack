data modify storage paint:main BoardData set from entity @s Inventory[{Slot:-106b}].tag.BoardData
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.offhand with air
scoreboard players set #temp.0 loy.value 1