# Apply held warding effect for 0.5s timer

# Calculate everyone's effective warding level:
execute as @a run function matcha:enchantment_effects/warding/calculate_power

# Run the Warding levels which happen at 0.5s intervals
execute as @a[scores={WardingPower=3}] at @s run function matcha:enchantment_effects/warding/power_3
execute as @a[scores={WardingPower=4}] at @s run function matcha:enchantment_effects/warding/power_4
