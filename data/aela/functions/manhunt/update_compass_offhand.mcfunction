execute at @s run scoreboard players operation @s nearest = @p[tag=runner] id

scoreboard players operation nearest var = @s nearest
execute as @a[tag=runner] if score @s id = nearest var run tag @s add target
execute unless entity @a[tag=target] run scoreboard players add @s nearest 1
execute if score @s nearest > tagged var run scoreboard players set @s nearest 1
tag @a remove target
scoreboard players reset nearest var

scoreboard players operation match var = @s nearest
execute as @e[tag=tracker] if score @s id = match var run tag @s add match

execute if score @s dimension matches 19 run item replace entity @s weapon.offhand from entity @e[tag=tracker1,limit=1,tag=match] weapon.mainhand
execute if score @s dimension matches 20 run item replace entity @s weapon.offhand from entity @e[tag=tracker2,limit=1,tag=match] weapon.mainhand
execute if score @s dimension matches 17 run item replace entity @s weapon.offhand from entity @e[tag=tracker3,limit=1,tag=match] weapon.mainhand

tag @e remove match