#Rascals go a little futher than normal seagulls, but are very quick
data merge entity @s {home_radius:13}
#Sets Home position to current position
data modify entity @s home_pos set from entity @s Pos
#Now I have a home, don't run this function on me again
tag @s add has_home

#Rascals are always seagulls! But just in case something changes in the future, run the check to see which variant it is \/
data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.3}]}
function matcha:environmental/chicken/set_bird_settings/pick_my_bird_settings