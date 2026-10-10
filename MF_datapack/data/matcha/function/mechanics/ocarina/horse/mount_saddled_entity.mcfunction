# revoke
advancement revoke @s only matcha:mechanics/ocarina/horse/mount_saddled_entity

# tag nearest steed (assume this is the one i'm currently riding)
tag @n[type=#minecraft:can_equip_saddle] add matcha.registered_steed

# store the UUID of my most recently mounted steed
execute store result score @s matcha.registered_steed_uuid1 run data get entity @n[tag=matcha.registered_steed] UUID[0]
execute store result score @s matcha.registered_steed_uuid2 run data get entity @n[tag=matcha.registered_steed] UUID[1]
execute store result score @s matcha.registered_steed_uuid3 run data get entity @n[tag=matcha.registered_steed] UUID[2]
execute store result score @s matcha.registered_steed_uuid4 run data get entity @n[tag=matcha.registered_steed] UUID[3]

# store steed's UUID on itself
execute store result score @n[tag=matcha.registered_steed] matcha.registered_steed_uuid1 run data get entity @n[tag=matcha.registered_steed] UUID[0]
execute store result score @n[tag=matcha.registered_steed] matcha.registered_steed_uuid2 run data get entity @n[tag=matcha.registered_steed] UUID[1]
execute store result score @n[tag=matcha.registered_steed] matcha.registered_steed_uuid3 run data get entity @n[tag=matcha.registered_steed] UUID[2]
execute store result score @n[tag=matcha.registered_steed] matcha.registered_steed_uuid4 run data get entity @n[tag=matcha.registered_steed] UUID[3]

# debug
tellraw @s {"text": "[debug] Registered ", "extra": [{"selector": "@n[tag=matcha.registered_steed]"}, " as my summoned steed. Yip yip!"]}