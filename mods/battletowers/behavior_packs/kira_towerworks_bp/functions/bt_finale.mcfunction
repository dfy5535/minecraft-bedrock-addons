# bt_finale —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# [工程扩展 D16] 核心侧驱动：附近守卫者已狂暴 -> 高塔进入 Boss 战状态(state 3)
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=2}] at @s if entity @e[tag=bt_golem_boss,scores={bt_golem_angry=1},r=95] run scoreboard players set @s bt_state 3
# ==============================================================================
# 1. 防偷箱狂暴判定：玩家踏入10层、挖掘顶层箱子、或放置漏斗偷箱，立即激怒守卫者！
# ==============================================================================
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=0}] at @s if entity @a[r=10] run scoreboard players set @s bt_golem_angry 1
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=0}] at @s unless block ~0 ~0 ~-4 chest run scoreboard players set @s bt_golem_angry 1
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=0}] at @s if block ~0 ~0 ~-4 hopper run scoreboard players set @s bt_golem_angry 1
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=0}] at @s if block ~0 ~0 ~-4 hopper run setblock ~0 ~0 ~-4 air [] destroy

execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1},tag=!bt_roared] at @s run playsound mob.warden.roar @a[r=45] ~ ~ ~ 1.5 0.7
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1},tag=!bt_roared] at @s run camerashake add @a[r=35] 0.5 1.5 positional
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1},tag=!bt_roared] at @s run titleraw @a[r=35] actionbar {"rawtext":[{"text":"§4§l[警告] §c高塔守卫者已被惊醒！击败它，否则休想夺取顶层秘宝！"}]}
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1},tag=!bt_roared] at @s run scoreboard players set @e[type=armor_stand,name="BT_Core",r=95,c=1] bt_state 3
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1},tag=!bt_roared] at @s run tag @s add bt_roared

# 2. 守卫者通用技能冷却推进与基础震地冲击
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1}] at @s run scoreboard players add @s bt_skill_cd 1
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1,bt_skill_cd=45}] at @s run particle minecraft:huge_explosion_emitter ~ ~0.5 ~
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1,bt_skill_cd=45}] at @s run playsound random.explode @a[r=25] ~ ~ ~ 1.0 0.6
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1,bt_skill_cd=45}] at @s run camerashake add @a[r=20] 0.4 0.5 positional

# ==============================================================================
# 3. 守卫者陨落 -> 启动 10 秒抢宝箱逃生倒计时 (bt_state = 4) 与逐层连环爆破坍塌 (bt_state = 5)
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=3}] at @s unless entity @e[tag=bt_golem_boss,r=95] run scoreboard players set @s bt_collapse_cd 200
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=3}] at @s unless entity @e[tag=bt_golem_boss,r=95] run playsound mob.enderdragon.growl @a[r=65] ~ ~60 ~ 1.5 0.6
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=3}] at @s unless entity @e[tag=bt_golem_boss,r=95] run titleraw @a[r=65] title {"rawtext":[{"text":"§6§l高塔守卫者已陨落！"}]}
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=3}] at @s unless entity @e[tag=bt_golem_boss,r=95] run titleraw @a[r=65] subtitle {"rawtext":[{"text":"§c§l警告：高塔将在 10 秒后从顶层开始连环崩塌！快抢宝箱撤离！"}]}
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=3}] at @s unless entity @e[tag=bt_golem_boss,r=95] run scoreboard players set @s bt_state 4

execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=4}] at @s run scoreboard players remove @s bt_collapse_cd 1
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=4,bt_collapse_cd=100}] at @s run titleraw @a[r=65] actionbar {"rawtext":[{"text":"§4§l[崩塌警报] §e距离高塔全面解体还剩 §c§l5 秒§e！"}]}
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=4,bt_collapse_cd=..0}] unless score @s bt_variant matches 8 at @s run summon armor_stand ~ ~65 ~ ~ ~ bt_collapse_node "BT_Collapse"
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=4,bt_variant=8,bt_collapse_cd=..0}] at @s run summon armor_stand ~ ~-65 ~ ~ ~ bt_collapse_node "BT_Collapse"
execute as @e[type=armor_stand,name="BT_Collapse",tag=!bt_collapse_init] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="BT_Collapse",tag=!bt_collapse_init] at @s run scoreboard players set @s bt_floor 70
execute as @e[type=armor_stand,name="BT_Collapse",tag=!bt_collapse_init] at @s run tag @s add bt_collapse_init
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=4,bt_collapse_cd=..0}] at @s run scoreboard players set @s bt_state 5

# 逐格连环爆破坍塌（先用 destroy 炸碎内圈产生漫天方块碎屑，再清理外扩结构）
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run particle minecraft:huge_explosion_emitter ~-3 ~ ~-3
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run particle minecraft:huge_explosion_emitter ~3 ~ ~3
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run playsound random.explode @a[r=65] ~ ~ ~ 1.2 0.7
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run camerashake add @a[r=50] 0.6 0.25 positional
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 air [] destroy
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run fill ~-8 ~ ~-8 ~8 ~ ~8 air []
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=1..}] at @s run scoreboard players remove @s bt_floor 1

execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=..0}] at @s run kill @e[type=armor_stand,name="BT_Floor",r=35]
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=..0}] at @s run kill @e[type=armor_stand,name="BT_Spawner",r=35]
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=..0}] at @s run kill @e[type=armor_stand,name="BT_Core",r=35]
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=..0}] at @s run titleraw @a[r=65] actionbar {"rawtext":[{"text":"§7§o[尘埃落定] 战斗高塔已彻底化为历史废墟……"}]}
execute as @e[type=armor_stand,name="BT_Collapse",scores={bt_floor=..0}] at @s run kill @s
# [工程扩展 D21] Boss 三阶段推进（任务书声明 bt_golem_phase 1-3 却只写了 1）
# 注意：清零行不能依赖 bt_golem_phase=1 —— 上一行已把它改成 2，条件会立即失效（实测踩过）
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1}] at @s run scoreboard players add @s bt_phase_cd 1
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1,bt_golem_phase=1,bt_phase_cd=600..}] at @s run scoreboard players set @s bt_golem_phase 2
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2},tag=!bt_p2] at @s run scoreboard players set @s bt_phase_cd 0
execute as @e[tag=bt_golem_boss,scores={bt_golem_angry=1,bt_golem_phase=2,bt_phase_cd=600..}] at @s run scoreboard players set @s bt_golem_phase 3
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3},tag=!bt_p3] at @s run scoreboard players set @s bt_phase_cd 0
# 阶段效果
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2}] at @s run effect @s speed 6 1 true
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2}] at @s run effect @s strength 6 1 true
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3}] at @s run effect @s resistance 6 1 true
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3}] at @s run effect @s strength 6 2 true
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3}] at @s run scoreboard players add @s bt_skill_cd 1
# 阶段切换演出（打标放最后，避免影响上面的清零条件）
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2},tag=!bt_p2] at @s run playsound mob.warden.roar @a[r=45] ~ ~ ~ 1.2 0.8
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2},tag=!bt_p2] at @s run titleraw @a[r=45] actionbar {"rawtext":[{"text":"§6§l[守卫者·二阶段] §e力量与速度提升！"}]}
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=2},tag=!bt_p2] at @s run tag @s add bt_p2
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3},tag=!bt_p3] at @s run playsound mob.wither.spawn @a[r=45] ~ ~ ~ 1.0 1.1
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3},tag=!bt_p3] at @s run titleraw @a[r=45] actionbar {"rawtext":[{"text":"§4§l[守卫者·终阶段] §c必杀技频率翻倍！"}]}
execute as @e[tag=bt_golem_boss,scores={bt_golem_phase=3},tag=!bt_p3] at @s run tag @s add bt_p3
