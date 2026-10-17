# bt_v13 —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# ==============================================================================
# [变体 #13 - 模块 A] 专属建筑材质全量替换与外扩结构改造指令 (bt_step = 38..42)
# ==============================================================================
# 1. 替换本层主墙、暗纹、八角承重柱、楼板、窗格与照明灯具
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_weathered_cut_copper [] replace cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_oxidized_cut_copper [] replace mossy_cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_chiseled_copper [] replace stonebrick
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_weathered_cut_copper_slab ["top_slot_bit"=true] replace stone_block_slab
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_copper_grate [] replace iron_bars
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 waxed_oxidized_copper_bulb ["lit"=true] replace lantern
# 2. 精确替换本层奇偶折返楼梯并保持楼梯朝向状态 (weirdo_direction: 3 朝北 / 2 朝南)
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=1..9,bt_dir=0,bt_step=38}] at @s run fill ~4 ~1 ~-2 ~4 ~6 ~3 waxed_weathered_cut_copper_stairs ["weirdo_direction"=3] replace stone_stairs
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=1..9,bt_dir=1,bt_step=38}] at @s run fill ~-4 ~1 ~-3 ~-4 ~6 ~2 waxed_weathered_cut_copper_stairs ["weirdo_direction"=2] replace stone_stairs
# 3. 逐块搭建变体 #13 所属的【结构母型I（发条十字铜齿轮外框与四向避雷导电钟楼）】外扩建筑几何结构与专属机关设施
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=39}] at @s run fill ~-7 ~2 ~-2 ~-7 ~4 ~2 waxed_oxidized_cut_copper [] keep
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=39}] at @s run fill ~7 ~2 ~-2 ~7 ~4 ~2 waxed_oxidized_cut_copper [] keep
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=40}] at @s run setblock ~-7 ~5 ~0 lightning_rod []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=40}] at @s run setblock ~7 ~5 ~0 lightning_rod []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=41}] at @s run setblock ~0 ~1 ~0 waxed_chiseled_copper []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_step=42}] at @s run setblock ~0 ~1 ~0 vault []

# ==============================================================================
# [变体 #13 - 模块 B] 1–9层三阶递进刷怪、武器护甲穿戴与词缀强化指令
# ==============================================================================
# 1–3层（前哨层）召唤
# 4–6层（中坚层）召唤
# 7–9层（精锐层）召唤
# 为本变体召唤出的驻守怪物统一穿戴专属武器、头盔、胸甲并注入变体词缀状态

# ==============================================================================
# [变体 #13 - 模块 C] 专属楼层动态机关、陷阱与环境法则指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=13}] at @s if entity @a[r=8] run scoreboard players add @s bt_trap_cd 1
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=13,bt_trap_cd=70..}] at @s if entity @a[r=7] run effect @a[r=7] bad_omen 60 0 true
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=13,bt_trap_cd=70..}] at @s if entity @a[r=7] run particle minecraft:trial_spawner_detection_ominous ~0 ~2 ~0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=13,bt_trap_cd=70..}] at @s if entity @a[r=8] run playsound block.copper_bulb.turn_on @a[r=12] ~ ~ ~ 1.2 1.0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=13,bt_trap_cd=70..}] at @s run scoreboard players set @s bt_trap_cd 0

# ==============================================================================
# [变体 #13 - 模块 D] 第10层专属守卫者 Boss 召唤、属性配置与独有必杀技指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=10,bt_step=43}] at @s run summon bt:guardian_i ~0 ~1 ~0 ~ ~ bt_boss_spawn "§3§l不祥发条机械神·Golem"
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run tag @s add bt_golem_boss
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run effect @s resistance 999999 2 true
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run effect @s fire_resistance 999999 1 true
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run effect @s health_boost 999999 4 true
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run effect @s instant_health 1 20 true
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_variant 13
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_hp 680
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run event entity @s bt:set_hp_680
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_phase 1
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_angry 0
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_skill_cd 0
execute as @e[type=bt:guardian_i,name="§3§l不祥发条机械神·Golem",tag=!bt_boss_init] at @s run tag @s add bt_boss_init
# 守卫者专属必杀技触发与冷却重置
execute as @e[tag=bt_golem_boss,scores={bt_variant=13,bt_golem_angry=1,bt_skill_cd=80}] at @s at @r[type=player,r=15] run summon lightning_bolt ~ ~ ~
execute as @e[tag=bt_golem_boss,scores={bt_variant=13,bt_golem_angry=1,bt_skill_cd=80}] at @s run summon vex ~0 ~2 ~0
execute as @e[tag=bt_golem_boss,scores={bt_variant=13,bt_golem_angry=1,bt_skill_cd=85..}] at @s run scoreboard players set @s bt_skill_cd 0

# ==============================================================================
# [变体 #13 - 模块 E] 第10层王座宝箱变体专属传世战利品注入指令 (bt_step = 44)
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 0 heavy_core 2 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 1 ominous_trial_key 4 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=13,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 2 enchanted_golden_apple 3 0
# [D34] Boss 保底召唤（塔已封顶且顶层无 Boss 时补一个）
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=2..,bt_variant=13}] at @s unless entity @e[type=bt:guardian_i,tag=bt_golem_boss,r=90] run summon bt:guardian_i ~ ~63 ~ ~ ~ bt_boss_spawn "§3§l不祥发条机械神·Golem"
# [工程扩展 D12] 必杀技触发时播放 special 动画（mark_variant=2，1.5s 后由 bt:cast_done 复位）
execute as @e[tag=bt_golem_boss,scores={bt_variant=13,bt_golem_angry=1,bt_skill_cd=80}] at @s run event entity @s bt:cast_special
