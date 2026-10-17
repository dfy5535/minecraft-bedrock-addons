# bt_v36 —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# ==============================================================================
# [变体 #36 - 模块 A] 专属建筑材质全量替换与外扩结构改造指令 (bt_step = 38..42)
# ==============================================================================
# 1. 替换本层主墙、暗纹、八角承重柱、楼板、窗格与照明灯具
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 deepslate_bricks [] replace cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 polished_basalt [] replace mossy_cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 iron_block [] replace stonebrick
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 deepslate_brick_slab ["top_slot_bit"=true] replace stone_block_slab
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 chain [] replace iron_bars
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 lantern ["hanging"=true] replace lantern
# 2. 精确替换本层奇偶折返楼梯并保持楼梯朝向状态 (weirdo_direction: 3 朝北 / 2 朝南)
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=1..9,bt_dir=0,bt_step=38}] at @s run fill ~4 ~1 ~-2 ~4 ~6 ~3 deepslate_brick_stairs ["weirdo_direction"=3] replace stone_stairs
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=1..9,bt_dir=1,bt_step=38}] at @s run fill ~-4 ~1 ~-3 ~-4 ~6 ~2 deepslate_brick_stairs ["weirdo_direction"=2] replace stone_stairs
# 3. 逐块搭建变体 #36 所属的【结构母型H（中央贯通能量核心柱与四向铁索熔炉巨塔）】外扩建筑几何结构与专属机关设施
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=39}] at @s run fill ~-1 ~1 ~-1 ~1 ~5 ~1 chain [] keep
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=39}] at @s run fill ~0 ~1 ~0 ~0 ~5 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=40}] at @s run fill ~-3 ~0 ~0 ~3 ~0 ~0 polished_basalt []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=41}] at @s run fill ~0 ~0 ~-3 ~0 ~0 ~3 polished_basalt []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_step=42}] at @s run setblock ~0 ~1 ~0 blast_furnace []

# ==============================================================================
# [变体 #36 - 模块 B] 1–9层三阶递进刷怪、武器护甲穿戴与词缀强化指令
# ==============================================================================
# 1–3层（前哨层）召唤
# 4–6层（中坚层）召唤
# 7–9层（精锐层）召唤
# 为本变体召唤出的驻守怪物统一穿戴专属武器、头盔、胸甲并注入变体词缀状态

# ==============================================================================
# [变体 #36 - 模块 C] 专属楼层动态机关、陷阱与环境法则指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=36}] at @s if entity @a[r=8] run scoreboard players add @s bt_trap_cd 1
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=36,bt_trap_cd=70..}] at @s if entity @a[r=7] run particle minecraft:mobflame_single ~0 ~2 ~0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=36,bt_trap_cd=70..}] at @s if entity @a[r=7] run damage @a[r=5] 4 fire_tick
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=36,bt_trap_cd=70..}] at @s if entity @a[r=8] run playsound random.fizz @a[r=12] ~ ~ ~ 1.2 1.0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=36,bt_trap_cd=70..}] at @s run scoreboard players set @s bt_trap_cd 0

# ==============================================================================
# [变体 #36 - 模块 D] 第10层专属守卫者 Boss 召唤、属性配置与独有必杀技指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=10,bt_step=43}] at @s run summon bt:guardian_h ~0 ~1 ~0 ~ ~ bt_boss_spawn "§c§l神锻赤铁泰坦·Golem"
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run tag @s add bt_golem_boss
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run effect @s resistance 999999 2 true
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run effect @s fire_resistance 999999 1 true
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run effect @s health_boost 999999 4 true
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run effect @s instant_health 1 20 true
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_variant 36
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_hp 720
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run event entity @s bt:set_hp_720
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_phase 1
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_angry 0
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_skill_cd 0
execute as @e[type=bt:guardian_h,name="§c§l神锻赤铁泰坦·Golem",tag=!bt_boss_init] at @s run tag @s add bt_boss_init
# 守卫者专属必杀技触发与冷却重置
execute as @e[tag=bt_golem_boss,scores={bt_variant=36,bt_golem_angry=1,bt_skill_cd=80}] at @s run damage @a[r=7] 10 entity_attack entity @s
execute as @e[tag=bt_golem_boss,scores={bt_variant=36,bt_golem_angry=1,bt_skill_cd=80}] at @s run summon blaze ~0 ~2 ~0
execute as @e[tag=bt_golem_boss,scores={bt_variant=36,bt_golem_angry=1,bt_skill_cd=85..}] at @s run scoreboard players set @s bt_skill_cd 0

# ==============================================================================
# [变体 #36 - 模块 E] 第10层王座宝箱变体专属传世战利品注入指令 (bt_step = 44)
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 0 iron_block 32 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 1 netherite_ingot 2 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=36,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 2 coal_block 64 0
# [D34] Boss 保底召唤（塔已封顶且顶层无 Boss 时补一个）
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=2..,bt_variant=36}] at @s unless entity @e[type=bt:guardian_h,tag=bt_golem_boss,r=90] run summon bt:guardian_h ~ ~63 ~ ~ ~ bt_boss_spawn "§c§l神锻赤铁泰坦·Golem"
# [工程扩展 D12] 必杀技触发时播放 special 动画（mark_variant=2，1.5s 后由 bt:cast_done 复位）
execute as @e[tag=bt_golem_boss,scores={bt_variant=36,bt_golem_angry=1,bt_skill_cd=80}] at @s run event entity @s bt:cast_special
