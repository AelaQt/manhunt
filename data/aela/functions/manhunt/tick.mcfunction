scoreboard players set runners var 0
execute as @a[tag=runner] run scoreboard players add runners var 1

execute as @a[tag=runner] if score @s death matches 1.. run gamemode spectator @s
execute as @a[tag=runner] if score @s death matches 1.. run tag @s remove runner

execute if score manhunt var matches 0 run function aela:manhunt/pregame
execute if score manhunt var matches 1 run function aela:manhunt/game

execute as @a if score @s start matches 1.. run function aela:manhunt/start
execute as @a if score @s role matches 1.. run function aela:manhunt/role