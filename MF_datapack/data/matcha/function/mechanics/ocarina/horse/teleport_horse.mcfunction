# teleport the tagged steed to the summoner
execute \
    at @p[tag=matcha.summoning_steed] \
    as @e[tag=matcha.steed_to_summon] \
    run return \
    run function matcha:mechanics/ocarina/horse/teleport_horse_inner

# else, fail
tellraw @p[tag=matcha.summoning_steed] {"text":"[🐎] ", "extra": [{"translate": "log.kleispack.horse_song_fail"}], "color": "red"}
execute as @p[tag=matcha.summoning_steed] at @s run playsound matcha:fishing.junk master @s