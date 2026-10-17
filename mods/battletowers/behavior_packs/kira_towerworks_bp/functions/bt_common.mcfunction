# bt_common —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# 1. 实时检测玩家用镐子敲碎物理 mob_spawner 方块 -> 爆出经验球、播放破笼音效、扣减本层剩余笼数并销毁节点
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run summon xp_orb ~ ~0.5 ~
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run summon xp_orb ~ ~0.5 ~
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run summon xp_orb ~ ~0.5 ~
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run particle minecraft:huge_explosion_emitter ~ ~ ~
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run playsound random.anvil_break @a[r=20] ~ ~ ~ 1.0 1.2
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run scoreboard players remove @e[type=armor_stand,name="BT_Floor",r=8,c=1] bt_spawner_cnt 1
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§a§l[破除封印] §e已击碎一座高塔刷怪笼！"}]}
execute as @e[type=armor_stand,name="BT_Spawner"] at @s unless block ~ ~ ~ mob_spawner run kill @s

# 2. 刷怪笼日常烈焰粒子与波次冷却倒计时（仅当玩家进入本层半径 11 格内时激活）
execute as @e[type=armor_stand,name="BT_Spawner"] at @s if block ~ ~ ~ mob_spawner if entity @a[r=11] run particle minecraft:mobflame_single ~ ~0.8 ~
execute as @e[type=armor_stand,name="BT_Spawner"] at @s if block ~ ~ ~ mob_spawner if entity @a[r=11] run scoreboard players remove @s bt_wave_cd 1

# 3. 楼梯井铁栏封门机制：未破除本层 2 座刷怪笼前，自动用铁栏杆封死通往上一层的天井口；全部破除后自动开启并奖励生命恢复！
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=1..}] at @s if entity @a[r=6] run fill ~4 ~6 ~-3 ~4 ~6 ~-1 iron_bars [] keep
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=1..}] at @s if entity @a[r=6] run fill ~-4 ~6 ~1 ~-4 ~6 ~3 iron_bars [] keep
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=0},tag=!bt_floor_cleared] at @s run fill ~-4 ~6 ~-3 ~4 ~6 ~3 air [] replace iron_bars
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=0},tag=!bt_floor_cleared] at @s run effect @a[r=10] regeneration 8 1 true
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=0},tag=!bt_floor_cleared] at @s run playsound random.levelup @a[r=15] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=0},tag=!bt_floor_cleared] at @s run titleraw @a[r=12] actionbar {"rawtext":[{"text":"§b§l[楼层净空] §a本层双刷怪笼已尽数破除，通往上层的阶梯封印已解开！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_floor=1..9,bt_spawner_cnt=0},tag=!bt_floor_cleared] at @s run tag @s add bt_floor_cleared
# 第 1–2 层：初阶生存补给
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..2,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 9 bread 16 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..2,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 10 torch 32 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..2,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 13 iron_ingot 8 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..2,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 17 arrow 32 0

# 第 3–4 层：铁装与风弹进阶补给
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=3..4,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 9 iron_sword 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=3..4,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 11 shield 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=3..4,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 13 golden_apple 2 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=3..4,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 15 wind_charge 16 0

# 第 5–6 层：钻石、绿宝石与末影珍珠
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=5..6,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 9 emerald 16 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=5..6,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 11 gold_ingot 20 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=5..6,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 13 diamond 6 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=5..6,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 15 ender_pearl 8 0

# 第 7–8 层：钻石重装与不死图腾
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=7..8,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 9 diamond_sword 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=7..8,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 11 diamond_chestplate 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=7..8,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 13 totem_of_undying 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=7..8,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 15 golden_apple 6 0

# 第 9–10 层：下界合金升级材料与海量经验瓶
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=9..10,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 13 netherite_scrap 4 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=9..10,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 14 netherite_upgrade_smithing_template 1 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=9..10,bt_step=36}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 22 experience_bottle 64 0
