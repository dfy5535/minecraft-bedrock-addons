# bt_wave_one —— 生成本层"第 bt_wave_n+1 只"（@s = BT_Floor 节点）
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=0}] at @s run summon zombie ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F1_0"
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=0}] at @s run tag @e[type=zombie,name="BTW_F1_0"] add bt_wmob_1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=1}] at @s run summon zombie ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F1_1"
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=1}] at @s run tag @e[type=zombie,name="BTW_F1_1"] add bt_wmob_1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=2}] at @s run summon zombie ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F1_2"
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=2}] at @s run tag @e[type=zombie,name="BTW_F1_2"] add bt_wmob_1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=3}] at @s run summon spider ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F1_3"
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=3}] at @s run tag @e[type=spider,name="BTW_F1_3"] add bt_wmob_1
execute as @e[type=armor_stand,tag=bt_fl_1,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=0}] at @s run summon zombie ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F2_0"
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=0}] at @s run tag @e[type=zombie,name="BTW_F2_0"] add bt_wmob_2
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=1}] at @s run summon zombie ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F2_1"
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=1}] at @s run tag @e[type=zombie,name="BTW_F2_1"] add bt_wmob_2
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=2}] at @s run summon skeleton ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F2_2"
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=2}] at @s run tag @e[type=skeleton,name="BTW_F2_2"] add bt_wmob_2
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=3}] at @s run summon skeleton ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F2_3"
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=3}] at @s run tag @e[type=skeleton,name="BTW_F2_3"] add bt_wmob_2
execute as @e[type=armor_stand,tag=bt_fl_2,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=0}] at @s run summon spider ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F3_0"
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=0}] at @s run tag @e[type=spider,name="BTW_F3_0"] add bt_wmob_3
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=1}] at @s run summon spider ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F3_1"
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=1}] at @s run tag @e[type=spider,name="BTW_F3_1"] add bt_wmob_3
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=2}] at @s run summon cave_spider ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F3_2"
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=2}] at @s run tag @e[type=cave_spider,name="BTW_F3_2"] add bt_wmob_3
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=3}] at @s run summon skeleton ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F3_3"
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=3}] at @s run tag @e[type=skeleton,name="BTW_F3_3"] add bt_wmob_3
execute as @e[type=armor_stand,tag=bt_fl_3,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=0}] at @s run summon zombie ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F4_0"
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=0}] at @s run tag @e[type=zombie,name="BTW_F4_0"] add bt_wmob_4
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=1}] at @s run summon zombie ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F4_1"
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=1}] at @s run tag @e[type=zombie,name="BTW_F4_1"] add bt_wmob_4
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=2}] at @s run summon skeleton ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F4_2"
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=2}] at @s run tag @e[type=skeleton,name="BTW_F4_2"] add bt_wmob_4
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=3}] at @s run summon skeleton ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F4_3"
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=3}] at @s run tag @e[type=skeleton,name="BTW_F4_3"] add bt_wmob_4
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=4}] at @s run summon creeper ~3 ~1 ~4 ~ ~ bt_spawn_init "BTW_F4_4"
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=4}] at @s run tag @e[type=creeper,name="BTW_F4_4"] add bt_wmob_4
execute as @e[type=armor_stand,tag=bt_fl_4,scores={bt_wave_n=4}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=0}] at @s run summon zombie ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F5_0"
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=0}] at @s run tag @e[type=zombie,name="BTW_F5_0"] add bt_wmob_5
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=1}] at @s run summon zombie ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F5_1"
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=1}] at @s run tag @e[type=zombie,name="BTW_F5_1"] add bt_wmob_5
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=2}] at @s run summon skeleton ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F5_2"
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=2}] at @s run tag @e[type=skeleton,name="BTW_F5_2"] add bt_wmob_5
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=3}] at @s run summon skeleton ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F5_3"
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=3}] at @s run tag @e[type=skeleton,name="BTW_F5_3"] add bt_wmob_5
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=4}] at @s run summon spider ~3 ~1 ~4 ~ ~ bt_spawn_init "BTW_F5_4"
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=4}] at @s run tag @e[type=spider,name="BTW_F5_4"] add bt_wmob_5
execute as @e[type=armor_stand,tag=bt_fl_5,scores={bt_wave_n=4}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=0}] at @s run summon witch ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F6_0"
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=0}] at @s run tag @e[type=witch,name="BTW_F6_0"] add bt_wmob_6
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=1}] at @s run summon husk ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F6_1"
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=1}] at @s run tag @e[type=husk,name="BTW_F6_1"] add bt_wmob_6
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=2}] at @s run summon husk ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F6_2"
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=2}] at @s run tag @e[type=husk,name="BTW_F6_2"] add bt_wmob_6
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=3}] at @s run summon skeleton ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F6_3"
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=3}] at @s run tag @e[type=skeleton,name="BTW_F6_3"] add bt_wmob_6
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=4}] at @s run summon skeleton ~3 ~1 ~4 ~ ~ bt_spawn_init "BTW_F6_4"
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=4}] at @s run tag @e[type=skeleton,name="BTW_F6_4"] add bt_wmob_6
execute as @e[type=armor_stand,tag=bt_fl_6,scores={bt_wave_n=4}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=0}] at @s run summon pillager ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F7_0"
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=0}] at @s run tag @e[type=pillager,name="BTW_F7_0"] add bt_wmob_7
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=1}] at @s run summon pillager ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F7_1"
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=1}] at @s run tag @e[type=pillager,name="BTW_F7_1"] add bt_wmob_7
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=2}] at @s run summon pillager ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F7_2"
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=2}] at @s run tag @e[type=pillager,name="BTW_F7_2"] add bt_wmob_7
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=3}] at @s run summon vindicator ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F7_3"
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=3}] at @s run tag @e[type=vindicator,name="BTW_F7_3"] add bt_wmob_7
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=4}] at @s run summon vindicator ~3 ~1 ~4 ~ ~ bt_spawn_init "BTW_F7_4"
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=4}] at @s run tag @e[type=vindicator,name="BTW_F7_4"] add bt_wmob_7
execute as @e[type=armor_stand,tag=bt_fl_7,scores={bt_wave_n=4}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=0}] at @s run summon evocation_illager ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F8_0"
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=0}] at @s run tag @e[type=evocation_illager,name="BTW_F8_0"] add bt_wmob_8
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=1}] at @s run summon vindicator ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F8_1"
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=1}] at @s run tag @e[type=vindicator,name="BTW_F8_1"] add bt_wmob_8
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=2}] at @s run summon vindicator ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F8_2"
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=2}] at @s run tag @e[type=vindicator,name="BTW_F8_2"] add bt_wmob_8
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=3}] at @s run summon pillager ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F8_3"
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=3}] at @s run tag @e[type=pillager,name="BTW_F8_3"] add bt_wmob_8
execute as @e[type=armor_stand,tag=bt_fl_8,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=0}] at @s run summon ravager ~-4 ~1 ~3 ~ ~ bt_spawn_init "BTW_F9_0"
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=0}] at @s run tag @e[type=ravager,name="BTW_F9_0"] add bt_wmob_9
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=0}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=1}] at @s run summon vindicator ~4 ~1 ~-3 ~ ~ bt_spawn_init "BTW_F9_1"
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=1}] at @s run tag @e[type=vindicator,name="BTW_F9_1"] add bt_wmob_9
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=1}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=2}] at @s run summon vindicator ~0 ~1 ~-4 ~ ~ bt_spawn_init "BTW_F9_2"
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=2}] at @s run tag @e[type=vindicator,name="BTW_F9_2"] add bt_wmob_9
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=2}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=3}] at @s run summon pillager ~-3 ~1 ~0 ~ ~ bt_spawn_init "BTW_F9_3"
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=3}] at @s run tag @e[type=pillager,name="BTW_F9_3"] add bt_wmob_9
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=3}] at @s run scoreboard players add @s bt_wave_n 1
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=4}] at @s run summon pillager ~3 ~1 ~4 ~ ~ bt_spawn_init "BTW_F9_4"
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=4}] at @s run tag @e[type=pillager,name="BTW_F9_4"] add bt_wmob_9
execute as @e[type=armor_stand,tag=bt_fl_9,scores={bt_wave_n=4}] at @s run scoreboard players add @s bt_wave_n 1
# 第 5 层：精英僵尸配锁链盔甲 + 铁剑
replaceitem entity @e[type=zombie,name="BTW_F5_0"] slot.armor.head 0 chainmail_helmet 1 0
replaceitem entity @e[type=zombie,name="BTW_F5_0"] slot.armor.chest 0 chainmail_chestplate 1 0
replaceitem entity @e[type=zombie,name="BTW_F5_0"] slot.weapon.mainhand 0 iron_sword 1 0
replaceitem entity @e[type=zombie,name="BTW_F5_1"] slot.armor.head 0 chainmail_helmet 1 0
replaceitem entity @e[type=zombie,name="BTW_F5_1"] slot.armor.chest 0 chainmail_chestplate 1 0
replaceitem entity @e[type=zombie,name="BTW_F5_1"] slot.weapon.mainhand 0 iron_sword 1 0
# 第 6 层：尸壳配铁头盔
replaceitem entity @e[type=husk,name="BTW_F6_1"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=husk,name="BTW_F6_2"] slot.armor.head 0 iron_helmet 1 0
# 第 7-9 层：卫道士配铁头盔
replaceitem entity @e[type=vindicator,name="BTW_F7_3"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=vindicator,name="BTW_F7_4"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=vindicator,name="BTW_F8_1"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=vindicator,name="BTW_F8_2"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=vindicator,name="BTW_F9_1"] slot.armor.head 0 iron_helmet 1 0
replaceitem entity @e[type=vindicator,name="BTW_F9_2"] slot.armor.head 0 iron_helmet 1 0
