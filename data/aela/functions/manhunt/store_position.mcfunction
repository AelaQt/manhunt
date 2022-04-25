scoreboard players operation match var = @s id
execute as @e[tag=tracker] if score @s id = match var run tag @s add match

execute if score @s dimension matches 19 store result entity @e[tag=tracker1,limit=1,tag=match] HandItems[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute if score @s dimension matches 19 store result entity @e[tag=tracker1,limit=1,tag=match] HandItems[0].tag.LodestonePos.Y int 1 run data get entity @s Pos[1]
execute if score @s dimension matches 19 store result entity @e[tag=tracker1,limit=1,tag=match] HandItems[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

execute if score @s dimension matches 20 store result entity @e[tag=tracker2,limit=1,tag=match] HandItems[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute if score @s dimension matches 20 store result entity @e[tag=tracker2,limit=1,tag=match] HandItems[0].tag.LodestonePos.Y int 1 run data get entity @s Pos[1]
execute if score @s dimension matches 20 store result entity @e[tag=tracker2,limit=1,tag=match] HandItems[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

execute if score @s dimension matches 17 store result entity @e[tag=tracker3,limit=1,tag=match] HandItems[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute if score @s dimension matches 17 store result entity @e[tag=tracker3,limit=1,tag=match] HandItems[0].tag.LodestonePos.Y int 1 run data get entity @s Pos[1]
execute if score @s dimension matches 17 store result entity @e[tag=tracker3,limit=1,tag=match] HandItems[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

tag @e remove match