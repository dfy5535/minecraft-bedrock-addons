# bt_v45 —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# ==============================================================================
# [变体 #45 - 模块 A] 专属建筑材质全量替换与外扩结构改造指令 (bt_step = 38..42)
# ==============================================================================
# 1. 替换本层主墙、暗纹、八角承重柱、楼板、窗格与照明灯具
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 polished_blackstone_bricks [] replace cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 ancient_debris [] replace mossy_cobblestone
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 chiseled_polished_blackstone [] replace stonebrick
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 polished_blackstone_brick_slab ["top_slot_bit"=true] replace stone_block_slab
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 chain [] replace iron_bars
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=38}] at @s run fill ~-6 ~0 ~-6 ~6 ~6 ~6 soul_lantern ["hanging"=true] replace lantern
# 2. 精确替换本层奇偶折返楼梯并保持楼梯朝向状态 (weirdo_direction: 3 朝北 / 2 朝南)
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=1..9,bt_dir=0,bt_step=38}] at @s run fill ~4 ~1 ~-2 ~4 ~6 ~3 polished_blackstone_brick_stairs ["weirdo_direction"=3] replace stone_stairs
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=1..9,bt_dir=1,bt_step=38}] at @s run fill ~-4 ~1 ~-3 ~-4 ~6 ~2 polished_blackstone_brick_stairs ["weirdo_direction"=2] replace stone_stairs
# 3. 逐块搭建变体 #45 所属的【结构母型D（四角独立3x3卫戍角楼副塔与空中栈桥要塞）】外扩建筑几何结构与专属机关设施
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=39}] at @s run fill ~-7 ~0 ~-7 ~-5 ~6 ~-5 chiseled_polished_blackstone [] hollow
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=39}] at @s run fill ~5 ~0 ~-7 ~7 ~6 ~-5 chiseled_polished_blackstone [] hollow
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=40}] at @s run fill ~-7 ~0 ~5 ~-5 ~6 ~7 chiseled_polished_blackstone [] hollow
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=40}] at @s run fill ~5 ~0 ~5 ~7 ~6 ~7 chiseled_polished_blackstone [] hollow
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=41}] at @s run fill ~-2 ~1 ~0 ~2 ~2 ~0 chain [] keep
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_step=42}] at @s run setblock ~0 ~0 ~0 netherite_block []

# ==============================================================================
# [变体 #45 - 模块 B] 1–9层三阶递进刷怪、武器护甲穿戴与词缀强化指令
# ==============================================================================
# 1–3层（前哨层）召唤
# 4–6层（中坚层）召唤
# 7–9层（精锐层）召唤
# 为本变体召唤出的驻守怪物统一穿戴专属武器、头盔、胸甲并注入变体词缀状态

# ==============================================================================
# [变体 #45 - 模块 C] 专属楼层动态机关、陷阱与环境法则指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=45}] at @s if entity @a[r=8] run scoreboard players add @s bt_trap_cd 1
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=45,bt_trap_cd=70..}] at @s if entity @a[r=7] run tp @a[r=7] ~0 ~1 ~0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=45,bt_trap_cd=70..}] at @s if entity @a[r=7] run particle minecraft:endrod ~0 ~2 ~0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=45,bt_trap_cd=70..}] at @s if entity @a[r=8] run playsound lodestone_compass.link_compass_to_lodestone @a[r=12] ~ ~ ~ 1.2 1.0
execute as @e[type=armor_stand,name="BT_Floor",scores={bt_variant=45,bt_trap_cd=70..}] at @s run scoreboard players set @s bt_trap_cd 0

# ==============================================================================
# [变体 #45 - 模块 D] 第10层专属守卫者 Boss 召唤、属性配置与独有必杀技指令
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=10,bt_step=43}] at @s run summon bt:guardian_d ~0 ~1 ~0 ~ ~ bt_boss_spawn "§4§l星辉合金大帝·Golem"
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run tag @s add bt_golem_boss
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run effect @s resistance 999999 2 true
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run effect @s fire_resistance 999999 1 true
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run effect @s health_boost 999999 4 true
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run effect @s instant_health 1 20 true
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_variant 45
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_hp 850
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run event entity @s bt:set_hp_850
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_phase 1
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_golem_angry 0
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run scoreboard players set @s bt_skill_cd 0
execute as @e[type=bt:guardian_d,name="§4§l星辉合金大帝·Golem",tag=!bt_boss_init] at @s run tag @s add bt_boss_init
# 守卫者专属必杀技触发与冷却重置
execute as @e[tag=bt_golem_boss,scores={bt_variant=45,bt_golem_angry=1,bt_skill_cd=80}] at @s run tp @a[r=15] ~0 ~1 ~0
execute as @e[tag=bt_golem_boss,scores={bt_variant=45,bt_golem_angry=1,bt_skill_cd=80}] at @s run damage @a[r=5] 12 entity_attack entity @s
execute as @e[tag=bt_golem_boss,scores={bt_variant=45,bt_golem_angry=1,bt_skill_cd=85..}] at @s run scoreboard players set @s bt_skill_cd 0

# ==============================================================================
# [变体 #45 - 模块 E] 第10层王座宝箱变体专属传世战利品注入指令 (bt_step = 44)
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 0 netherite_block 2 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 1 netherite_ingot 8 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_variant=45,bt_floor=10,bt_step=44}] at @s run replaceitem block ~0 ~1 ~-4 slot.container 2 enchanted_golden_apple 5 0
# [D34] Boss 保底召唤（塔已封顶且顶层无 Boss 时补一个）
execute as @e[type=armor_stand,name="BT_Core",scores={bt_state=2..,bt_variant=45}] at @s unless entity @e[type=bt:guardian_d,tag=bt_golem_boss,r=90] run summon bt:guardian_d ~ ~63 ~ ~ ~ bt_boss_spawn "§4§l星辉合金大帝·Golem"
# [工程扩展 D12] 必杀技触发时播放 special 动画（mark_variant=2，1.5s 后由 bt:cast_done 复位）
execute as @e[tag=bt_golem_boss,scores={bt_variant=45,bt_golem_angry=1,bt_skill_cd=80}] at @s run event entity @s bt:cast_special
