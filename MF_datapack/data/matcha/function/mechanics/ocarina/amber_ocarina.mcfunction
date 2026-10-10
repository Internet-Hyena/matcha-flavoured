# remove advancement
advancement revoke @s only matcha:mechanics/ocarina/amber_ocarina

# stop the function from running repeatedly
# also prevents players triggering simultaneously
execute unless stopwatch matcha:amber_ocarina 5.. run return fail
stopwatch restart matcha:amber_ocarina

tellraw @s {"text": "[🎵] ", "extra": [{"translate": "log.kleispack.used_ocarina", "with": [{"translate": "item.kleispack.amber_ocarina"}]}], "color": "#ac7b5c"}