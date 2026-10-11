tp @p @s
tellraw @p[tag=matcha.warping_home] {"text":"[🎵] ", "extra": [{"translate": "log.kleispack.warp_song_success"}], "color": "aqua"}

# particle effect. TODO polish!
execute as @p at @p run playsound minecraft:entity.breeze.idle_air
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.75 1000