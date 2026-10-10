# reset tags
tag @a remove matcha.summoning_steed
tag @e remove matcha.steed_to_summon

# tag me
tag @s add matcha.summoning_steed

# tag my most recently ridden horse
execute at @s as @e[tag=matcha.registered_steed] \
    if score @s matcha.registered_steed_uuid1 = @p matcha.registered_steed_uuid1 \
    if score @s matcha.registered_steed_uuid2 = @p matcha.registered_steed_uuid2 \
    if score @s matcha.registered_steed_uuid3 = @p matcha.registered_steed_uuid3 \
    if score @s matcha.registered_steed_uuid4 = @p matcha.registered_steed_uuid4 \
    run tag @s add matcha.steed_to_summon

tellraw @a {"text": "[debug] ", "extra": ["Attempting to summon steed ", {"selector": "@e[tag=matcha.steed_to_summon]"}, " to ", {"selector": "@s"}, "..."]}
schedule function matcha:mechanics/ocarina/horse/teleport_horse 5s replace

# wait 5s then teleport the tagged horse