execute as @s[scores={minecards_coins=..99}] run title @s actionbar {"text":"Not enough Cardcoins!","italic":true,"color":"dark_red"}
execute as @s[scores={minecards_coins=100..}] run give @s carrot_on_a_stick{display:{Name:'{"text":"Overworld Pack","color":"#61C768","italic":false}',Lore:['{"text":"Set size: [24 Cards]","color":"#4B704C","italic":false}','{"text":"Contains 3 cards","color":"gray","italic":false}']},CustomModelData:1890011} 1
execute as @s[scores={minecards_coins=100..}] run scoreboard players remove @s minecards_coins 100
execute as @s run function minecards:card_trader/buy_packs