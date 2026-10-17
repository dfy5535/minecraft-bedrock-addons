# bt_events —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# [工程扩展 D14] 6 大随机特殊楼层事件（任务书第四章标题承诺但正文缺失，按 bt_event 设计意图补齐）
# 掷骰：玩家进入本层且未触发过时，bt_event = bt_rng % 6 + 1
# [工程扩展 D14b] 掷骰必须用临时变量：否则第一行改了 bt_event，后两行的 bt_event=0 条件立即失效
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=0}] at @s if entity @a[r=8] run scoreboard players operation @s bt_event_roll = BT_GLOBAL bt_rng
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=0}] at @s if entity @a[r=8] run scoreboard players operation @s bt_event_roll %= BT_SIX bt_rng
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=0}] at @s if entity @a[r=8] run scoreboard players operation @s bt_event = @s bt_event_roll
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=0}] at @s if entity @a[r=8] run scoreboard players add @s bt_event 1

# 事件 1：蜂群突袭
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run summon bee ~ ~1 ~
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run summon bee ~1 ~1 ~1
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run summon bee ~-1 ~1 ~-1
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run playsound mob.bee.loop_aggressive @a[r=15] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§e§l[楼层事件] §6蜂群突袭！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=1}] at @s run scoreboard players set @s bt_event 7

# 事件 2：烈焰魔仆
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run summon blaze ~ ~1 ~
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run summon blaze ~2 ~1 ~2
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run particle minecraft:huge_explosion_emitter ~ ~1 ~
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run playsound mob.blaze.breathe @a[r=15] ~ ~ ~ 1.0 0.8
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§c§l[楼层事件] §6烈焰魔仆降临！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=2}] at @s run scoreboard players set @s bt_event 7

# 事件 3：黑暗降临
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=3}] at @s run effect @a[r=12] blindness 8 0 true
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=3}] at @s run effect @a[r=12] slowness 8 0 true
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=3}] at @s run playsound ambient.cave @a[r=15] ~ ~ ~ 1.0 0.7
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=3}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§8§l[楼层事件] §7黑暗降临……"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=3}] at @s run scoreboard players set @s bt_event 7

# 事件 4：补给空投
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run setblock ~ ~1 ~ chest ["facing_direction"=2]
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run replaceitem block ~ ~1 ~ slot.container 0 golden_apple 2 0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run replaceitem block ~ ~1 ~ slot.container 1 arrow 32 0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run replaceitem block ~ ~1 ~ slot.container 2 iron_ingot 8 0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run playsound random.levelup @a[r=15] ~ ~ ~ 1.0 1.2
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§a§l[楼层事件] §e补给空投已抵达！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=4}] at @s run scoreboard players set @s bt_event 7

# 事件 5：精英守卫
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run summon vindicator ~ ~1 ~
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run replaceitem entity @e[type=vindicator,r=3,c=1] slot.weapon.mainhand 0 diamond_sword 1 0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run replaceitem entity @e[type=vindicator,r=3,c=1] slot.armor.head 0 iron_helmet 1 0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run effect @e[type=vindicator,r=3,c=1] strength 9999 1 true
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run playsound mob.vindicator.celebrate @a[r=15] ~ ~ ~ 1.0 0.9
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§4§l[楼层事件] §c精英守卫出现！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=5}] at @s run scoreboard players set @s bt_event 7

# 事件 6：天雷贯顶
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=6}] at @s run summon lightning_bolt ~ ~6 ~
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=6}] at @s run camerashake add @a[r=20] 0.5 0.6 positional
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=6}] at @s run playsound ambient.weather.thunder @a[r=25] ~ ~ ~ 1.5 0.9
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=6}] at @s run titleraw @a[r=15] actionbar {"rawtext":[{"text":"§b§l[楼层事件] §f天雷贯顶！"}]}
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_event=6}] at @s run scoreboard players set @s bt_event 7
