# TODO! translate me!
tellraw @p [{"text": "[🐎] "}, {"selector":"@s"},{"text":" will now come when called!", "color": "green"}]

# store my UUID on the player
execute store result score @p matcha.horse_uuid run data get entity @s UUID[0]

# store my UUID on myself
execute store result score @s matcha.horse_uuid run data get entity @s UUID[0]

# give me a tag
tag @s add matcha.registered_horse