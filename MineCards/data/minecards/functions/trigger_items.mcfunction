execute as @s if predicate minecards:holding/card_trader run function minecards:card_trader/menu
execute as @s at @s if predicate minecards:holding/overworld_pack run function minecards:packs/open_overworld
execute as @s at @s if predicate minecards:holding/nether_pack run function minecards:packs/open_nether
execute as @s at @s if predicate minecards:holding/end_pack run function minecards:packs/open_end
execute as @s at @s if predicate minecards:holding/random_pack run function minecards:packs/open_random
execute as @s at @s if predicate minecards:holding/ancient_pack run function minecards:packs/open_ancient