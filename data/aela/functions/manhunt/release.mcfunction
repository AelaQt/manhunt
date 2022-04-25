execute as @a run attribute @s generic.knockback_resistance base set 0.0
effect clear @a[tag=!runner]
execute as @a at @s run playsound block.note_block.pling ambient @s
tellraw @a {"color":"dark_gray","text":"Hunters have been released"}
