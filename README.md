
# mc-geometry

Lets you take a ray, and cast it onto geometrical objects.

It calculates things to 3.d.p precision, as such, all inputs and outputs are multiplied by 1000.

  

# Usage

  

To get the ray of a player, run `mcgeo:get_ray` as the player, and the following scores will be set in the `rayData` scoreboard:

-  `out_ovecx, out_ovecy, out_ovecz` - The centre of the player's head

-  `out_dvecx, out_dvecy, out_dvecz` - The player's looking direction

  

For this to work however, there must exist an `area_effect_cloud` with the tag `mcgeo_ray` that exists in the same tick that the function is ran. This is used to calculate the direction vector, and only one needs to exist to be able to use the function on every player.

  

## Currently Supported Geometries

-  **Axis-Aligned Bounding Box**


The following inputs should be stored in the `rayData` scoreboard to use this.

  

Inputs:

- `boxAX, boxAY, boxAZ` (x, y, z coordinates of one corner)

- `boxBX, boxBY, boxBZ` (x, y, z coordinates of opposing corner)

- `in_ovecx, in_ovecy, in_ovecz` (components of ray origin vector)

- `in_dvecx, in_dvecy, in_dvecz` (components of ray direction vector)

If `mcgeo:get/ray_aabb` is ran, the following is output (in `rayData`):

- `out_dist` - The distance from the ray origin to the hit position. This will be `-1` if there was no intersection.

- `out_x, out_y, out_z` - The position the ray hit the geometry. This is only set / changed if the distance output is not `-1`.

If `mcgeo:get/ray_aabb_distance` is ran, the following is output (in `rayData`):

- `out_dist` - The distance from the ray origin to the hit position. This will be `-1` if there was no intersection.
