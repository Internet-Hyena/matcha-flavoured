# remove advancement
advancement revoke @s only matcha:mechanics/ocarina/hepatizon_ocarina

# stop the function from running repeatedly
# also prevents players triggering simultaneously
execute unless stopwatch matcha:hepatizon_ocarina 5.. run return fail
stopwatch restart matcha:hepatizon_ocarina

tellraw @s {"text": "[🎵] ", "extra": [{"translate": "log.kleispack.used_ocarina", "with": [{"translate": "item.kleispack.hepatizon_ocarina"}]}], "color": "#ac7b5c"}

# execute inner function
function matcha:mechanics/ocarina/horse/horse_whistle