execute as @a[tag=tagged] run scoreboard players add @s id 1
execute as @e[tag=tracker] run scoreboard players add @s id 1
execute as @a[tag=runner,tag=!tagged,limit=1] run scoreboard players set @s id 1
execute as @a if score @s id matches 1 run tag @s add tagged

scoreboard players set tagged var 0
execute as @a[tag=tagged] run scoreboard players add tagged var 1

function aela:manhunt/summon_stands
execute as @e[tag=unset] run scoreboard players set @s id 1
execute as @e[tag=unset] run tag @s add tracker
tag @e remove unset

execute unless score tagged var = runners var run function aela:manhunt/set_ids