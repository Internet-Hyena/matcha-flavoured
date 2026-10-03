setblock ~ ~-1 ~ minecraft:dirt
effect give @s slowness 1 99 true
rotate @s ~ 180
particle block{block_state:"minecraft:dirt"} ~ ~ ~ .25 .1 .25 0.1 10 normal
particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
playsound minecraft:entity.pig.ambient neutral @a
playsound minecraft:block.crop.break neutral @a