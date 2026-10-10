# TODO! translate me!
tellraw @p[tag=matcha.summoning_horse] [{"text": "[🐎] "}, {"selector":"@s"},{"text":" heard your call and came running!"}]
tp @s @p[tag=matcha.summoning_horse]
playsound minecraft:entity.horse.ambient neutral @p
playsound minecraft:entity.horse.gallop neutral @a