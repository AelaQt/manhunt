kill @e[tag=tracker1]
kill @e[tag=tracker2]
kill @e[tag=tracker3]
tag @a remove tagged
function aela:manhunt/set_ids
effect clear @a[tag=runner]
execute as @a[tag=runner] run attribute @s generic.knockback_resistance base set 0.0
item replace entity @e[tag=tracker1] weapon.mainhand with compass{Tracker:1,LodestonePos: {X: 0, Y: 0, Z: 0}, LodestoneDimension: "minecraft:overworld",LodestoneTracked:0,display:{Name:'{"text":"Tracker"}'}}
item replace entity @e[tag=tracker2] weapon.mainhand with compass{Tracker:1,LodestonePos: {X: 0, Y: 0, Z: 0}, LodestoneDimension: "minecraft:the_nether",LodestoneTracked:0,display:{Name:'{"text":"Tracker"}'}}
item replace entity @e[tag=tracker3] weapon.mainhand with compass{Tracker:1,LodestonePos: {X: 0, Y: 0, Z: 0}, LodestoneDimension: "minecraft:the_end",LodestoneTracked:0,display:{Name:'{"text":"Tracker"}'}}
scoreboard players set manhunt var 1
scoreboard players reset @a role
scoreboard players reset @a start
tellraw @a {"color":"dark_gray","text":"Game starting"}
tellraw @a {"color":"gray","text":"Hunters are frozen for 15 seconds"}
schedule function aela:manhunt/release 15s
gamerule doDaylightCycle true
difficulty easy
