# bt_wave_init —— 楼层节点创建时：打楼层标签 + 写入本层配额（每层一个节点）
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 1 run tag @s add bt_fl_1
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 1 run scoreboard players set @s bt_wave_total 4
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 2 run tag @s add bt_fl_2
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 2 run scoreboard players set @s bt_wave_total 4
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 3 run tag @s add bt_fl_3
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 3 run scoreboard players set @s bt_wave_total 4
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 4 run tag @s add bt_fl_4
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 4 run scoreboard players set @s bt_wave_total 5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 5 run tag @s add bt_fl_5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 5 run scoreboard players set @s bt_wave_total 5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 6 run tag @s add bt_fl_6
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 6 run scoreboard players set @s bt_wave_total 5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 7 run tag @s add bt_fl_7
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 7 run scoreboard players set @s bt_wave_total 5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 8 run tag @s add bt_fl_8
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 8 run scoreboard players set @s bt_wave_total 4
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 9 run tag @s add bt_fl_9
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 9 run scoreboard players set @s bt_wave_total 5
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 10 run tag @s add bt_fl_10
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s if score @s bt_floor matches 10 run scoreboard players set @s bt_wave_total 0
