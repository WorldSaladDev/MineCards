# 1: Kill Zombies
execute as @a unless score @s minecards_killzombie matches 0 if score CardsManager minecards_event matches 1 run scoreboard players add @s minecards_coins 3
execute as @a unless score @s minecards_killzombie matches 0 run scoreboard players remove @s minecards_killzombie 1
# 2: Kill Creepers
execute as @a unless score @s minecards_killcreeper matches 0 if score CardsManager minecards_event matches 2 run scoreboard players add @s minecards_coins 3
execute as @a unless score @s minecards_killcreeper matches 0 run scoreboard players remove @s minecards_killcreeper 1
# 3: Kill Skeletons
execute as @a unless score @s minecards_killskeleton matches 0 if score CardsManager minecards_event matches 3 run scoreboard players add @s minecards_coins 3
execute as @a unless score @s minecards_killskeleton matches 0 run scoreboard players remove @s minecards_killskeleton 1