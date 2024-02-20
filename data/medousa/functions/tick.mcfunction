#自身を除く
tag @a[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{medousa:1}}}] add medousa
tag @a[nbt=!{SelectedItem:{id:"minecraft:spyglass",tag:{medousa:1}}}] remove medousa
#石化解除
execute as @e[nbt={active_effects:[{amplifier:99b,id:"minecraft:luck"}],Attributes:[{Base:100d,Name:"minecraft:generic.knockback_resistance"}]}] run tag @s add cure
execute as @e[tag=cure] run function medousa:cure
#
advancement revoke @r only medousa:tick
