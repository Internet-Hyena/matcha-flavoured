#Nest makers DO NOT have a home, they wander far and wide in order to find a new place to nest

#Don't run this function on me again, say I have a home even though I don't
tag @s add has_home

#Nest makers a little faster than normal chickens, they're on a journey!
data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.28}]}
function matcha:environmental/chicken/set_bird_settings/pick_my_bird_settings