# remove advancement
advancement revoke @s only matcha:mechanics/ocarina/copper_ocarina

# stop the function from running repeatedly
# also prevents players triggering simultaneously
execute unless stopwatch matcha:copper_ocarina 5.. run return fail
stopwatch restart matcha:copper_ocarina

tellraw @s {"text": "[🎵] ", "extra": [{"translate": "log.kleispack.used_ocarina", "with": [{"translate": "item.kleispack.copper_ocarina"}]}], "color": "#ac7b5c"}