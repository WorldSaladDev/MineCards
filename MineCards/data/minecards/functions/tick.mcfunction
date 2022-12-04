# Everything in this file will be called every in game tick(20 times per second)

# --------------------- Manage cardevents ---------------------
execute if score CardsManager minecards_eventsenabled matches 1 run function minecards:events/run_event_timer
execute unless score CardsManager minecards_event matches 0 run function minecards:events/do_events
execute if score CardsManager minecards_event matches 0 run function minecards:events/reset_event_scores
# -------------------------------------------------------------


#
execute as @a unless score @s minecards_usedcarrotstick matches 0 run function minecards:trigger_items
scoreboard players set @a minecards_usedcarrotstick 0