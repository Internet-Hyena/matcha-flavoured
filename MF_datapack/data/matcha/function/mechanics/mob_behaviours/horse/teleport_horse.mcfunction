execute \
    at @p[tag=matcha.summoning_horse] \
    as @e[tag=matcha.horse_summoned] \
    run return \
    run function matcha:mechanics/mob_behaviours/horse/teleport_horse_inner

tellraw @p[tag=matcha.summoning_horse] [{"selector":"@s"},{"text":"[🐎] But nopony came...", "color": "red"}]
execute as @p[tag=matcha.summoning_horse] at @s run playsound matcha:fishing.junk master @s