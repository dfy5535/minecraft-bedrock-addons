# bt_wave —— 逐层固定波次控制器（D32）
# ★ 关键：cd 只在"玩家在本层附近"时累加，且必须累加到 20 才生成一只 ——
#   否则无人在场时 cd 恒为 0，十个楼层会在第一层就同时开刷（真机实测：第一层瞬间 41 只）

# ① cd 累加：玩家在 r=10 内 且 本层配额未满 且 cd 未到 20
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_cd=..19}] at @s if entity @a[r=10] if score @s bt_wave_n < @s bt_wave_total run scoreboard players add @s bt_wave_cd 1
# ② cd 到 20 → 生成本层下一只，然后 cd 归零（即每 20 刻 = 1 秒一只）
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_cd=20..}] at @s if score @s bt_wave_n < @s bt_wave_total run function bt_wave_one
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_cd=20..}] at @s run scoreboard players set @s bt_wave_cd 0
# ③ 清场：配额刷完 **且** 本层再无存活敌人 → state=2 + 解锁下一层
execute as @e[type=armor_stand,tag=bt_fl_1] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_1] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_1,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_2] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_2] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_2,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_3] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_3] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_3,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_4] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_4] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_4,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_5] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_5] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_5,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_6] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_6] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_6,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_7] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_7] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_7,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_8] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_8] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_8,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
execute as @e[type=armor_stand,tag=bt_fl_9] at @s if score @s bt_wave_n >= @s bt_wave_total unless entity @e[tag=bt_wmob_9] run scoreboard players set @s bt_wave_state 2
execute as @e[type=armor_stand,tag=bt_fl_9,tag=!bt_floor_cleared,scores={bt_wave_state=2}] at @s run tag @s add bt_floor_cleared
# ④ 第 8 层：唤魔者召唤的恼鬼也纳入清场判定
execute as @e[type=armor_stand,tag=bt_fl_8] at @s if score @s bt_wave_n >= @s bt_wave_total run tag @e[type=vex,r=16] add bt_wmob_8
