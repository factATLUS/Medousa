#石化解除
effect clear @s luck
effect clear @s slowness
effect clear @s jump_boost
effect clear @s resistance
attribute @s generic.knockback_resistance base set 0
#石化解除演出
execute at @s run kill @e[type=block_display,tag=medousa,sort=nearest,limit=1]
execute at @s run particle block stone ~ ~ ~ 0.3 1 0.3 0 300 normal
execute at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 2
#
tag @s remove cure