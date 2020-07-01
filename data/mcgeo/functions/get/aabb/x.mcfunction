
# Compute dim_lo & dim_hi
scoreboard players operation dim_lo rayData = boxAX rayData
scoreboard players operation dim_hi rayData = boxBX rayData

scoreboard players operation dim_lo rayData -= in_ovecx rayData
scoreboard players operation dim_hi rayData -= in_ovecx rayData

# Maintain decimal accuracy
scoreboard players operation dim_lo rayData *= #scale rayData
scoreboard players operation dim_hi rayData *= #scale rayData

scoreboard players operation dim_lo rayData /= in_dvecx rayData
scoreboard players operation dim_hi rayData /= in_dvecx rayData

execute if score dim_lo rayData > dim_hi rayData run scoreboard players operation dim_lo rayData >< dim_hi rayData

execute if score dim_hi rayData < lo rayData run scoreboard players set aabb_exit rayData 1
execute if score dim_lo rayData > hi rayData run scoreboard players set aabb_exit rayData 1

execute if score dim_lo rayData > lo rayData run scoreboard players operation lo rayData = dim_lo rayData
execute if score dim_hi rayData < hi rayData run scoreboard players operation hi rayData = dim_hi rayData