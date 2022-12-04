#Everything in this file will only be called upon loading the pack/world

# --------------------- Create Scoreboards ---------------------
#players using carrot on a stick. Used to handl right-click items
scoreboard objectives add minecards_usedcarrotstick used:carrot_on_a_stick

#the number of boxes a player has opened
scoreboard objectives add minecards_boxesopened dummy

#the number of coins a player has
scoreboard objectives add minecards_coins dummy

#timer to control when events happen
scoreboard objectives add minecards_eventtimer dummy

#the time left for an active event
scoreboard objectives add minecards_eventleft dummy

#whether events are enabled, so servers could turn off events if they wanted
scoreboard objectives add minecards_eventsenabled dummy

#0 if there is no event happening, >0 if there is an event happening. Different scores correspond to different events. See events folder.
scoreboard objectives add minecards_event dummy

#whether this is a new world/reset, or if this is just being reloaded. Tells the datapack whether to reset all scores to defaults or not.
scoreboard objectives add minecards_newworldorreset dummy

#thresholds to tell when an event can spawn vs is forced to spawn.
scoreboard objectives add minecards_eventtimer_lowerthreshold dummy
scoreboard objectives add minecards_eventtimer_upperthreshold dummy

#the following scores track player stats during events. Names are self-explanatory
scoreboard objectives add minecards_killzombie killed:zombie
scoreboard objectives add minecards_killcreeper killed:creeper
scoreboard objectives add minecards_killskeleton killed:skeleton
# -------------------------------------------------------------


# --------------------- Do Stuff ---------------------
tellraw @a [{"text":"[✓]","color":"green"},{"text":" \"Mi","italic":false,"color":"#8a4215"},{"text":"ne","color":"#b06a2c"},{"text":"C","color":"#61b83d"},{"text":"ar","color":"#3fa825"},{"text":"ds\" ","color":"#1b8a15"},{"text":"by WorldSaladDev loaded","color":"green"}]

#if minecards_newworldorreset is equal to 0, set all the default score values. This should only happen if you are deliberately resetting,
# or if this is a new world. We don't want to delete everyone's coins whenever the world loads.
execute unless score CardsManager minecards_newworldorreset matches 1 run function minecards:setup_and_reset
# -------------------------------------------------------------