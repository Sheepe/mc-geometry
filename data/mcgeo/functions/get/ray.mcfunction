
execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] ^ ^ ^1

execute store result score out_dvecx rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[0] 1000
execute store result score out_dvecy rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[1] 1000
execute store result score out_dvecz rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[2] 1000

execute at @s anchored eyes run tp @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] ^ ^ ^

execute store result score out_ovecx rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[0] 1000
execute store result score out_ovecy rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[1] 1000
execute store result score out_ovecz rayData run data get entity @e[type=minecraft:area_effect_cloud,tag=mcgeo_ray,limit=1] Pos[2] 1000

scoreboard players operation out_dvecx rayData -= out_ovecx rayData
scoreboard players operation out_dvecy rayData -= out_ovecy rayData
scoreboard players operation out_dvecz rayData -= out_ovecz rayData
