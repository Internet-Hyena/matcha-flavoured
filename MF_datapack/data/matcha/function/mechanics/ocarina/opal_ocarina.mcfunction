# remove advancement
advancement revoke @s only matcha:mechanics/ocarina/opal_ocarina

# stop the function from running repeatedly
# also prevents players triggering simultaneously
execute unless stopwatch matcha:opal_ocarina 5.. run return fail
stopwatch restart matcha:opal_ocarina

tellraw @s {"text": "[🎵] ", "extra": [{"translate": "log.kleispack.used_ocarina", "with": [{"translate": "item.kleispack.opal_ocarina"}]}], "color": "#ac7b5c"}