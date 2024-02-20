#石化
effect give @s slowness infinite 100 true
effect give @s jump_boost infinite 200 true
effect give @s resistance infinite 100 true
attribute @s generic.knockback_resistance base set 100
#石化演出
execute at @s unless entity @e[type=block_display,tag=medousa,distance=..1] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 2
execute at @s unless entity @e[type=block_display,tag=medousa,distance=..1] run summon block_display ~-0.5 ~ ~-0.5 {Tags:["medousa"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,2f,1f]},block_state:{Name:"minecraft:stone"}}
#
tag @s remove stone
