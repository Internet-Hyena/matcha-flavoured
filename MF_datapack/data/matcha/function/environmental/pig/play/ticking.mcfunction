#Decrement 1
scoreboard players remove @e[tag=playing_pig_play_animation] matcha.pig_play_animation 1
execute as @e[tag=playing_pig_play_animation] run function matcha:environmental/pig/play/animation_controller
execute if entity @e[tag=playing_pig_play_animation] run schedule function matcha:environmental/pig/play/ticking 1t