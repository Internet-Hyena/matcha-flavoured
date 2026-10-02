#Curious chickens wander further away from the nest than most chickens
data merge entity @s {home_radius:21}
#Sets Home position to current position
data modify entity @s home_pos set from entity @s Pos
#Now I have a home, don't run this function on me again
tag @s add has_home

#We have to also set the sound variant based on the variant, beucase minecraft will attempt to override it with a random sound variant
function matcha:environmental/chicken/set_bird_settings/pick_my_bird_settings