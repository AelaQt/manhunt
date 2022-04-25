execute if entity @s[tag=runner] run tag @s add hunter
execute if entity @s[tag=runner] run tag @s remove runner
execute unless entity @s[tag=hunter] run tag @s add runner
tag @s remove hunter

execute if entity @s[tag=runner] run tellraw @a ["",{"color":"dark_green","selector":"@s"},{"color":"dark_green","text":" is now a runner"}]
execute if entity @s[tag=!runner] run tellraw @a ["",{"color":"dark_red","selector":"@s"},{"color":"dark_red","text":" is now a hunter"}]