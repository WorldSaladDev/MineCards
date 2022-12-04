# Everything in this file will be called every in game tick(20 times per second) if events are enabled
# This file is dedicated to managing the event timer. An event should happen every 20-30 minutes, or 24000-36000 ticks by default.
# Once the timer reaches 24000 ticks, give a chance to trigger an event every tick. If it reaches 36000 ticks, automatically trigger an event. Once an event is triggered, reset the timer.
# Only increment the timer if there is no event happening.

#increment timer if no event is happening
execute if score CardsManager minecards_eventsenabled matches 1 if score CardsManager minecards_event matches 0 run scoreboard players add CardsManager minecards_eventtimer 1
execute if score CardsManager minecards_eventtimer >= CardsManager minecards_eventtimer_lowerthreshold if predicate minecards:event_chance run function minecards:events/start_event
execute if score CardsManager minecards_eventtimer >= CardsManager minecards_eventtimer_upperthreshold run function minecards:events/start_event

execute unless score CardsManager minecards_event matches 0 run scoreboard players remove CardsManager minecards_eventleft 1
execute if score CardsManager minecards_eventleft matches 0 run scoreboard players set CardsManager minecards_event 0