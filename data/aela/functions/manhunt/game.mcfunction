execute as @a store result score @s dimension run data get entity @s Dimension

execute as @a[tag=runner] run function aela:manhunt/store_position
execute as @a[tag=!runner,nbt={SelectedItem:{tag:{Tracker:1}}}] run function aela:manhunt/update_compass
execute as @a[tag=!runner,nbt={Inventory:[{Slot:-106b,tag:{Tracker:1}}]}] run function aela:manhunt/update_compass_offhand

kill @e[type=item,nbt={Item:{tag:{Tracker:1}}}]
execute as @a[tag=!runner,gamemode=survival] unless entity @s[nbt={Inventory:[{tag:{Tracker:1}}]}] run give @s compass{Tracker:1,display:{Name:'{"text":"Tracker"}'}}