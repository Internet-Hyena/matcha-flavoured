# Find my existing marker and remove it
execute at @s as @e[tag=matcha.spawn_marker] \
    if score @s matcha.spawn_marker_uuid1 = @p matcha.spawn_marker_uuid1 \
    if score @s matcha.spawn_marker_uuid2 = @p matcha.spawn_marker_uuid2 \
    if score @s matcha.spawn_marker_uuid3 = @p matcha.spawn_marker_uuid3 \
    if score @s matcha.spawn_marker_uuid4 = @p matcha.spawn_marker_uuid4 \
    run function matcha:mechanics/ocarina/warp/cleanup_spawn_marker

# Create a new marker
execute summon marker run tag @s add matcha.spawn_marker
tp @n[tag=matcha.spawn_marker] @p
tp @n[tag=matcha.spawn_marker] ~ ~ ~ ~180 0

# Store its UUID on my scoreboard
execute store result score @s matcha.spawn_marker_uuid1 run data get entity @n[tag=matcha.spawn_marker] UUID[0]
execute store result score @s matcha.spawn_marker_uuid2 run data get entity @n[tag=matcha.spawn_marker] UUID[1]
execute store result score @s matcha.spawn_marker_uuid3 run data get entity @n[tag=matcha.spawn_marker] UUID[2]
execute store result score @s matcha.spawn_marker_uuid4 run data get entity @n[tag=matcha.spawn_marker] UUID[3]

# Store its UUID on itself
execute store result score @n[tag=matcha.spawn_marker] matcha.spawn_marker_uuid1 run data get entity @n[tag=matcha.spawn_marker] UUID[0]
execute store result score @n[tag=matcha.spawn_marker] matcha.spawn_marker_uuid2 run data get entity @n[tag=matcha.spawn_marker] UUID[1]
execute store result score @n[tag=matcha.spawn_marker] matcha.spawn_marker_uuid3 run data get entity @n[tag=matcha.spawn_marker] UUID[2]
execute store result score @n[tag=matcha.spawn_marker] matcha.spawn_marker_uuid4 run data get entity @n[tag=matcha.spawn_marker] UUID[3]

tellraw @s "[debug] Registered 1 chunk to force load..."
execute at @n[tag=matcha.spawn_marker] run forceload add ~ ~
