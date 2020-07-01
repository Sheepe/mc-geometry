
scoreboard players set lo rayData -2147483647
scoreboard players set hi rayData 2147483647
scoreboard players set aabb_exit rayData 0

function mcgeo:get/aabb/x
execute if score aabb_exit rayData matches 0 run function mcgeo:get/aabb/y
execute if score aabb_exit rayData matches 0 run function mcgeo:get/aabb/z

execute if score aabb_exit rayData matches 0 run scoreboard players operation out_dist rayData = lo rayData
execute if score aabb_exit rayData matches 1 run scoreboard players set out_dist rayData -1