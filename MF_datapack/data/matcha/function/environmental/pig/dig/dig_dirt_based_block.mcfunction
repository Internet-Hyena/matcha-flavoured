setblock ~ ~-1 ~ minecraft:dirt
# spawn this pig's Gift Loot, tags will be determined there (MUST use kill, because that allows us to check the current entities tags using /loot)
# We can also check the block the mob is on with this LT, so for ex. Each block type can have a different LT
tag @s add matcha.pig_gifting
loot spawn ^ ^-0.8 ^ kill @s
say gifting
data merge entity @n[type=item] {Motion:[0d,0.3d,0d,0d]}
tag @s remove matcha.pig_gifting