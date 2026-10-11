# remove advancement
advancement revoke @s only matcha:mechanics/ocarina/diamond_ocarina

# stop the function from running repeatedly
# also prevents players triggering simultaneously
execute unless stopwatch matcha:diamond_ocarina 5.. run return fail
stopwatch restart matcha:diamond_ocarina

tellraw @s {"text": "[🎵] ", "extra": [{"translate": "log.kleispack.used_ocarina", "with": [{"translate": "item.kleispack.diamond_ocarina"}]}], "color": "aqua"}

# setup tags
tag @a remove matcha.warping_home
tag @s add matcha.warping_home

# wait 5s then warp me home
schedule function matcha:mechanics/ocarina/warp/warp_home 5s replace
