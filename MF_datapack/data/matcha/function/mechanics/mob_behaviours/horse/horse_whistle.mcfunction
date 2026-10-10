advancement revoke @s only matcha:mechanics/horse/horse_whistle

execute unless stopwatch matcha:horse_whistle 5.. run return fail
stopwatch restart matcha:horse_whistle

tag @a remove matcha.summoning_horse
tag @e remove matcha.horse_summoned

tag @s add matcha.summoning_horse

# debug message. translate?
tellraw @p[tag=matcha.summoning_horse] [{"text":"[🐎] Blew into the Hepatizon Ocarina..."}]

execute at @s as @e[type=horse,distance=..8,nbt={Tame:1b}] \
    run return \
    run function matcha:mechanics/mob_behaviours/horse/register_horse

# If my horse and our UUIDs equal, say i'm coming
execute at @s as @e[type=horse,distance=8..] if score @s matcha.horse_uuid = @p matcha.horse_uuid run tag @s add matcha.horse_summoned
say Tagged @e[tag=matcha.horse_summoned]

schedule function matcha:mechanics/mob_behaviours/horse/teleport_horse 5s replace