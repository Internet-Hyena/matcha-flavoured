#This is my attempt at using datapacks to do animation, it feels like im doing this wrong, LMK
effect give @s slowness 2 99 true
#Keep head up
# execute if score @s matcha.digging_animation matches 1..30 run rotate @s ~ -20
execute if score @s matcha.pig_play_animation matches 39 run execute at @s run function matcha:environmental/pig/play/jump_animation
execute if score @s matcha.pig_play_animation matches 30 run execute at @s run function matcha:environmental/pig/play/land_animation
execute if score @s matcha.pig_play_animation matches 25 run execute at @s run function matcha:environmental/pig/play/jump_animation
execute if score @s matcha.pig_play_animation matches 16 run execute at @s run function matcha:environmental/pig/play/land_animation
execute if score @s matcha.pig_play_animation matches 10 run execute at @s run function matcha:environmental/pig/play/jump_animation
execute if score @s matcha.pig_play_animation matches 1 run execute at @s run function matcha:environmental/pig/play/land_animation
execute if score @s matcha.pig_play_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pig_play_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true
execute if score @s matcha.pig_play_animation matches 1 run execute at @s run execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_can_play_on run execute as @s run function matcha:environmental/pig/play/get_muddy
execute if score @s matcha.pig_play_animation matches ..0 run tag @s remove playing_pig_play_animation
execute if score @s matcha.pig_play_animation matches ..0 run scoreboard players reset @s matcha.pig_play_animation