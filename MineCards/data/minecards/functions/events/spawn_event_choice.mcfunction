loot spawn ~ ~3 ~ loot minecards:choose_event
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:dirt",Count:1b,tag:{CustomModelData:1}}},limit=1,sort=nearest] run function minecards:events/pick_events/kill_zombies
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:dirt",Count:1b,tag:{CustomModelData:2}}},limit=1,sort=nearest] run function minecards:events/pick_events/kill_creepers
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:dirt",Count:1b,tag:{CustomModelData:3}}},limit=1,sort=nearest] run function minecards:events/pick_events/kill_skeletons