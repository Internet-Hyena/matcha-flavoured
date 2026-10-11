execute at @p[tag=matcha.warping_home] as @e[tag=matcha.spawn_marker] \
    if score @s matcha.spawn_marker_uuid1 = @p matcha.spawn_marker_uuid1 \
    if score @s matcha.spawn_marker_uuid2 = @p matcha.spawn_marker_uuid2 \
    if score @s matcha.spawn_marker_uuid3 = @p matcha.spawn_marker_uuid3 \
    if score @s matcha.spawn_marker_uuid4 = @p matcha.spawn_marker_uuid4 \
    run return \
    run function matcha:mechanics/ocarina/warp/warp_home_inner

tellraw @p[tag=matcha.warping_home] {"text":"[🎵] ", "extra": [{"translate": "log.kleispack.warp_song_fail"}], "color": "red"}
execute as @p[tag=matcha.warping_home] at @s run playsound matcha:fishing.junk master @s