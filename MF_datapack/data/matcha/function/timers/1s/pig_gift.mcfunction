# execute as @e[type=pig] at @s run function matcha:environmental/pig/pig_gift
# I had to make sure the pigs could dig only if adults, and this seemed cheaper than @x[type=x,flag=x] but let me know if I'm wrong
execute as @e if predicate matcha:mob_checks/is_adult_pig run execute at @s run function matcha:environmental/pig/pig_gift