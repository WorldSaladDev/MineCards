execute as @s[scores={minecards_coins=..199}] run title @s actionbar {"text":"Not enough Cardcoins!","italic":true,"color":"dark_red"}
execute as @s[scores={minecards_coins=200..}] run give @s carrot_on_a_stick{display:{Name:'{"text":"End Pack","color":"#d9d386","italic":false}',Lore:['{"text":"Set size: [12 Cards]","color":"#6e6b40","italic":false}','{"text":"Contains 3 cards","color":"gray","italic":false}']},CustomModelData:1890013} 1
execute as @s[scores={minecards_coins=200..}] run scoreboard players remove @s minecards_coins 200
execute as @s run function minecards:card_trader/buy_packs