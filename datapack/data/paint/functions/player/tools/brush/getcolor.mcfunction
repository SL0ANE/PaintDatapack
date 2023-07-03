scoreboard players set #this entity.grid.color -1
execute if predicate paint:dye/all run function paint:player/tools/brush/getcolorfromdye
execute if predicate paint:dye/custom run function paint:player/tools/brush/getcolorfromcustom