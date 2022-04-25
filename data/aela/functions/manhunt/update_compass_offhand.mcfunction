execute at @s run scoreboard players operation @s nearest = @p[tag=runner] id
scoreboard players operation match var = @s nearest
execute as @e[tag=tracker] if score @s id = match var run tag @s add match

execute if score @s dimension matches 19 run item replace entity @s weapon.offhand from entity @e[tag=tracker1,limit=1,tag=match] weapon.mainhand
execute if score @s dimension matches 20 run item replace entity @s weapon.offhand from entity @e[tag=tracker2,limit=1,tag=match] weapon.mainhand
execute if score @s dimension matches 17 run item replace entity @s weapon.offhand from entity @e[tag=tracker3,limit=1,tag=match] weapon.mainhand

tag @e remove match