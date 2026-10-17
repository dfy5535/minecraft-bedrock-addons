# bt_core —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# ==============================================================================
# 模块 A：全局伪随机数振荡器与野外自然探索生成（每刻运行）
# ==============================================================================
scoreboard players add BT_GLOBAL bt_rng 29
execute if score BT_GLOBAL bt_rng matches 1000.. run scoreboard players remove BT_GLOBAL bt_rng 1000

# [工程扩展 D19] 玩家进出高塔范围 -> bt_in_tower 标记（任务书只用了该标签却从未赋值）
execute as @a at @s if entity @e[type=armor_stand,name="BT_Core",r=40] run tag @s add bt_in_tower
execute as @a[tag=bt_in_tower] at @s unless entity @e[type=armor_stand,name="BT_Core",r=48] run tag @s remove bt_in_tower
execute if score BT_GLOBAL bt_explore_cd matches 6000.. if score BT_GLOBAL bt_autospawn matches 1 as @r[tag=!bt_in_tower] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water if block ~25 ~ ~25 air unless block ~25 ~ ~25 lava unless block ~25 ~-8 ~25 air unless entity @e[type=armor_stand,tag=bt_tower_root,r=180] run summon armor_stand ~25 ~ ~25 ~ ~ bt_spawn_init "BT_Builder"
execute if score BT_GLOBAL bt_explore_cd matches 6000.. if score BT_GLOBAL bt_autospawn matches 1 as @r[tag=!bt_in_tower] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water if block ~25 ~ ~25 air unless block ~25 ~ ~25 lava unless block ~25 ~-8 ~25 air unless entity @e[type=armor_stand,tag=bt_tower_root,r=180] run titleraw @a[r=80] title {"rawtext":[{"text":"§6§l附近出现了战斗高塔！"}]}
execute if score BT_GLOBAL bt_explore_cd matches 6000.. if score BT_GLOBAL bt_autospawn matches 1 as @r[tag=!bt_in_tower] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water if block ~25 ~ ~25 air unless block ~25 ~ ~25 lava unless block ~25 ~-8 ~25 air unless entity @e[type=armor_stand,tag=bt_tower_root,r=180] run playsound mob.wither.spawn @a[r=80] ~ ~ ~ 0.6 1.4
execute if score BT_GLOBAL bt_explore_cd matches 6000.. if score BT_GLOBAL bt_autospawn matches 1 as @r[tag=!bt_in_tower] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water if block ~25 ~ ~25 air unless block ~25 ~ ~25 lava unless block ~25 ~-8 ~25 air unless entity @e[type=armor_stand,tag=bt_tower_root,r=180] run function bt_spawn_receipt
# [工程扩展 D24b] 成功生成才归零；失败则每 100 刻重试一次（不再干等 5 分钟）
# [工程扩展 D24d] 归零条件必须依赖「召唤真的成功」：原写法与召唤行条件相同，召唤静默失败时也会归零 -> 永不重试
execute if score BT_GLOBAL bt_explore_cd matches 6000.. if entity @e[type=armor_stand,name="BT_Builder"] run scoreboard players set BT_GLOBAL bt_explore_cd 0
execute if score BT_GLOBAL bt_explore_cd matches 6100.. run scoreboard players set BT_GLOBAL bt_explore_cd 5900
# [工程扩展 D24c] 自然生成时给玩家提示（原实现悄无声息地建在 25 格外）

# ==============================================================================
# 模块 B：手动召唤任意指定变体高塔指令（管理员随时可在聊天框输入）
# ==============================================================================
# 【召唤随机变体高塔】：
# /execute at @p run summon armor_stand ~ ~ ~15 ~ ~ bt_spawn_init "BT_Builder"
# 【召唤指定编号变体高塔（将 N 替换为 1 到 50 之间的任意数字，例如 9 代表苍白之园嘎枝高塔）】：
# /execute at @p run summon armor_stand ~ ~ ~15 ~ ~ bt_spawn_init "BT_Builder"
# /scoreboard players set @e[type=armor_stand,name="BT_Builder",c=1] bt_variant N

# ==============================================================================
# 模块 C：建筑锚点 BT_Builder 初始化与永久塔底核心 BT_Core 绑定
# ==============================================================================
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run effect @s invisibility 999999 1 true
# [工程扩展 D15] 锚点防火
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run effect @s fire_resistance 999999 1 true
# [工程扩展 D22] 抗性 5（100% 减伤）+ 再生：变体 #43 会在锚点身体所在格放凋灵玫瑰，
# 凋灵效果会把不免疫的盔甲架毒死（真机实测：建到第 5 层锚点与核心同时消失）。
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run effect @s resistance 999999 4 true
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run effect @s regeneration 999999 4 true
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run tag @s add bt_tower_root
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run scoreboard players set @s bt_state 1
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run scoreboard players set @s bt_floor 1
# [工程扩展 D18] 变体 -> 建筑结构母型(bt_arch 1..10)：任务书注册了该计分板却从未使用
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=1}] at @s run scoreboard players set @s bt_arch 1
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=24}] at @s run scoreboard players set @s bt_arch 1
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=34}] at @s run scoreboard players set @s bt_arch 1
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=40}] at @s run scoreboard players set @s bt_arch 1
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=2}] at @s run scoreboard players set @s bt_arch 7
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=9}] at @s run scoreboard players set @s bt_arch 7
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=12}] at @s run scoreboard players set @s bt_arch 7
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=23}] at @s run scoreboard players set @s bt_arch 7
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=29}] at @s run scoreboard players set @s bt_arch 7
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=3}] at @s run scoreboard players set @s bt_arch 6
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=38}] at @s run scoreboard players set @s bt_arch 6
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=49}] at @s run scoreboard players set @s bt_arch 6
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=4}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=14}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=16}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=22}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=28}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=42}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=43}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=47}] at @s run scoreboard players set @s bt_arch 3
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=5}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=18}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=20}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=21}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=27}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=32}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=45}] at @s run scoreboard players set @s bt_arch 4
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=6}] at @s run scoreboard players set @s bt_arch 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=10}] at @s run scoreboard players set @s bt_arch 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=17}] at @s run scoreboard players set @s bt_arch 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=26}] at @s run scoreboard players set @s bt_arch 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=37}] at @s run scoreboard players set @s bt_arch 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=7}] at @s run scoreboard players set @s bt_arch 8
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=19}] at @s run scoreboard players set @s bt_arch 8
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=31}] at @s run scoreboard players set @s bt_arch 8
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=36}] at @s run scoreboard players set @s bt_arch 8
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=44}] at @s run scoreboard players set @s bt_arch 8
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=8}] at @s run scoreboard players set @s bt_arch 10
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=11}] at @s run scoreboard players set @s bt_arch 9
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=13}] at @s run scoreboard players set @s bt_arch 9
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=35}] at @s run scoreboard players set @s bt_arch 9
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=46}] at @s run scoreboard players set @s bt_arch 9
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=15}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=25}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=30}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=33}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=39}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=41}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=48}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_variant=50}] at @s run scoreboard players set @s bt_arch 5
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run scoreboard players set @s bt_step 0
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run scoreboard players set @s bt_dir 0
# [工程扩展 D9] 测试钩子：bt_force_variant 为 1..50 时强制该变体；0 时走任务书原随机逻辑
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] if score BT_GLOBAL bt_force_variant matches 1..50 run scoreboard players operation @s bt_variant = BT_GLOBAL bt_force_variant
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] unless score @s bt_variant matches 1..50 run scoreboard players operation @s bt_variant = BT_GLOBAL bt_rng
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] unless score @s bt_variant matches 1..50 run scoreboard players operation @s bt_variant %= BT_FIFTY bt_rng
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] unless score @s bt_variant matches 1..50 run scoreboard players add @s bt_variant 1

execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run summon armor_stand ~ ~ ~ ~ ~ bt_core_init "BT_Core"
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run tag @s add bt_tower_root
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run scoreboard players operation @s bt_variant = @e[type=armor_stand,name="BT_Builder",r=5,c=1] bt_variant
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run scoreboard players operation @s bt_arch = @e[type=armor_stand,name="BT_Builder",r=5,c=1] bt_arch
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run scoreboard players set @s bt_state 1
execute as @e[type=armor_stand,name="BT_Core",tag=!bt_core_ready] at @s run tag @s add bt_core_ready
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run titleraw @a[r=70] actionbar {"rawtext":[{"text":"§6§l[战斗高塔引擎] §e正在逐方块构筑高塔（变体 #"},{"score":{"name":"@s","objective":"bt_variant"}},{"text":"）……"}]}
execute as @e[type=armor_stand,name="BT_Builder",tag=!bt_initialized] at @s run tag @s add bt_initialized
# 推进单层施工步进 (bt_step: 1 -> 50)
# [工程扩展 D22b] 建造期间每刻治疗并加抗性 —— 保护的是**全部塔节点**（锚点/核心/刷怪/楼层），
# 而不只是锚点：真机实测变体 #43 的凋灵玫瑰会把 BT_Core 直接毒死，导致高塔永远无法封顶。
execute as @e[tag=bt_tower_root] at @s run effect @s instant_health 1 10 true
execute as @e[tag=bt_tower_root] at @s run effect @s resistance 5 4 true
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1}] at @s unless block ~ ~-1 ~ air run scoreboard players add @s bt_step 1

# [Step 1-3] 地基向下自动扎根延伸（仅第1层执行，自动填平悬崖、斜坡、河流与熔岩湖）
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=1}] at @s run fill ~-6 ~-15 ~-6 ~6 ~-1 ~6 cobblestone [] keep
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=1}] at @s run fill ~-6 ~-15 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=1}] at @s run fill ~-6 ~-15 ~-6 ~6 ~-1 ~6 cobblestone [] replace lava
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=2}] at @s run fill ~-6 ~-15 ~-6 ~-5 ~-1 ~-5 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=2}] at @s run fill ~5 ~-15 ~-6 ~6 ~-1 ~-5 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=2}] at @s run fill ~-6 ~-15 ~5 ~-5 ~-1 ~6 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=2}] at @s run fill ~5 ~-15 ~5 ~6 ~-1 ~6 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=3}] at @s run fill ~-5 ~0 ~-5 ~5 ~6 ~5 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=3}] at @s run playsound dig.stone @a[r=50] ~ ~ ~ 1.0 0.8

# [Step 4-8] 铺设八角圆盘楼层地板与奇偶交替楼梯天井口
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=4}] at @s run fill ~-2 ~0 ~-5 ~2 ~0 ~5 stone_block_slab ["stone_slab_type"="stone_brick","top_slot_bit"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=5}] at @s run fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_block_slab ["stone_slab_type"="stone_brick","top_slot_bit"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=6}] at @s run fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_block_slab ["stone_slab_type"="stone_brick","top_slot_bit"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=6}] at @s run fill ~-4 ~0 ~-4 ~4 ~0 ~4 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=2..10,bt_dir=1,bt_step=7}] at @s run fill ~4 ~0 ~-3 ~4 ~0 ~-1 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=2..10,bt_dir=0,bt_step=7}] at @s run fill ~-4 ~0 ~1 ~-4 ~0 ~3 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=8}] at @s run setblock ~0 ~0 ~0 chiseled_stone_bricks []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=8}] at @s run setblock ~-3 ~0 ~0 chiseled_stone_bricks []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=8}] at @s run setblock ~3 ~0 ~0 chiseled_stone_bricks []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=8}] at @s run particle minecraft:villager_happy ~0 ~1 ~0

# [Step 9-20] 顺时针一格一格砌筑八角圆筒主墙与四道斜向承重棱柱
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=9}] at @s run fill ~-2 ~0 ~-6 ~2 ~6 ~-6 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=9}] at @s run fill ~-2 ~0 ~-6 ~2 ~0 ~-6 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=9}] at @s run particle minecraft:endrod ~0 ~3 ~-6
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=9}] at @s run playsound dig.stone @a[r=50] ~0 ~3 ~-6 1.0 1.0

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=10}] at @s run fill ~3 ~0 ~-5 ~3 ~6 ~-5 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=10}] at @s run fill ~4 ~0 ~-4 ~4 ~6 ~-4 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=11}] at @s run fill ~5 ~0 ~-3 ~5 ~6 ~-3 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=11}] at @s run particle minecraft:endrod ~4 ~3 ~-4

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=12}] at @s run fill ~6 ~0 ~-2 ~6 ~6 ~2 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=12}] at @s run fill ~6 ~0 ~-2 ~6 ~0 ~2 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=12}] at @s run particle minecraft:endrod ~6 ~3 ~0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=12}] at @s run playsound dig.stone @a[r=50] ~6 ~3 ~0 1.0 1.1

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=13}] at @s run fill ~5 ~0 ~3 ~5 ~6 ~3 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=13}] at @s run fill ~4 ~0 ~4 ~4 ~6 ~4 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=14}] at @s run fill ~3 ~0 ~5 ~3 ~6 ~5 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=14}] at @s run particle minecraft:endrod ~4 ~3 ~4

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=15}] at @s run fill ~-2 ~0 ~6 ~2 ~6 ~6 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=15}] at @s run fill ~-2 ~0 ~6 ~2 ~0 ~6 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=15}] at @s run particle minecraft:endrod ~0 ~3 ~6
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=15}] at @s run playsound dig.stone @a[r=50] ~0 ~3 ~6 1.0 1.2

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=16}] at @s run fill ~-3 ~0 ~5 ~-3 ~6 ~5 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=16}] at @s run fill ~-4 ~0 ~4 ~-4 ~6 ~4 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=17}] at @s run fill ~-5 ~0 ~3 ~-5 ~6 ~3 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=17}] at @s run particle minecraft:endrod ~-4 ~3 ~4

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=18}] at @s run fill ~-6 ~0 ~-2 ~-6 ~6 ~2 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=18}] at @s run fill ~-6 ~0 ~-2 ~-6 ~0 ~2 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=18}] at @s run particle minecraft:endrod ~-6 ~3 ~0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=18}] at @s run playsound dig.stone @a[r=50] ~-6 ~3 ~0 1.0 1.3

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=19}] at @s run fill ~-5 ~0 ~-3 ~-5 ~6 ~-3 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=19}] at @s run fill ~-4 ~0 ~-4 ~-4 ~6 ~-4 mossy_cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=20}] at @s run fill ~-3 ~0 ~-5 ~-3 ~6 ~-5 stonebrick []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=20}] at @s run playsound random.anvil_use @a[r=50] ~0 ~3 ~0 0.5 1.4

# [Step 21-24] 开凿四向观察窗、第1层迎宾城门与四角挂灯
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=21}] at @s run fill ~0 ~2 ~-6 ~0 ~4 ~-6 iron_bars []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=21}] at @s run fill ~6 ~2 ~0 ~6 ~4 ~0 iron_bars []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=21}] at @s run fill ~-6 ~2 ~0 ~-6 ~4 ~0 iron_bars []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=2..9,bt_step=22}] at @s run fill ~0 ~2 ~6 ~0 ~4 ~6 iron_bars []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=22}] at @s run fill ~-1 ~1 ~6 ~1 ~3 ~6 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=22}] at @s run setblock ~0 ~4 ~6 air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1,bt_step=22}] at @s run fill ~-1 ~0 ~7 ~1 ~0 ~7 stone_stairs ["weirdo_direction"=2]
# [工程扩展 D13] 灯笼承重天花板（否则 hanging 灯笼立刻掉落）
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=23}] at @s run setblock ~-3 ~5 ~-3 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=23}] at @s run setblock ~3 ~5 ~-3 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=24}] at @s run setblock ~-3 ~5 ~3 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=24}] at @s run setblock ~3 ~5 ~3 cobblestone []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=23}] at @s run setblock ~-3 ~4 ~-3 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=23}] at @s run setblock ~3 ~4 ~-3 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=24}] at @s run setblock ~-3 ~4 ~3 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=24}] at @s run setblock ~3 ~4 ~3 lantern ["hanging"=true]

# [Step 25-31] 逐级铺设奇偶交替折返楼梯
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=25}] at @s run setblock ~4 ~1 ~3 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=26}] at @s run setblock ~4 ~2 ~2 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=27}] at @s run setblock ~4 ~3 ~1 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=28}] at @s run setblock ~4 ~4 ~0 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=29}] at @s run setblock ~4 ~5 ~-1 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=30}] at @s run setblock ~4 ~6 ~-2 stone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=0,bt_step=31}] at @s run setblock ~4 ~6 ~-3 stonebrick []

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=25}] at @s run setblock ~-4 ~1 ~-3 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=26}] at @s run setblock ~-4 ~2 ~-2 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=27}] at @s run setblock ~-4 ~3 ~-1 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=28}] at @s run setblock ~-4 ~4 ~0 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=29}] at @s run setblock ~-4 ~5 ~1 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=30}] at @s run setblock ~-4 ~6 ~2 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=1,bt_step=31}] at @s run setblock ~-4 ~6 ~3 stonebrick []

# [Step 32-37] 安置双物理刷怪笼、绑定 BT_Spawner 与 BT_Floor 节点、生成北侧战利品箱与第10层王座城垛
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=32}] at @s run setblock ~-3 ~1 ~0 mob_spawner []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=32}] at @s run setblock ~3 ~1 ~0 mob_spawner []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=33}] at @s run summon armor_stand ~-3 ~1 ~0 ~ ~ bt_spawner_node "BT_Spawner"
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=33}] at @s run summon armor_stand ~3 ~1 ~0 ~ ~ bt_spawner_node "BT_Spawner"
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run tag @s add bt_tower_root
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run scoreboard players operation @s bt_variant = @e[type=armor_stand,name="BT_Builder",r=12,c=1] bt_variant
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run scoreboard players operation @s bt_floor = @e[type=armor_stand,name="BT_Builder",r=12,c=1] bt_floor
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run scoreboard players set @s bt_wave_cd 80
execute as @e[type=armor_stand,name="BT_Spawner",tag=!bt_spawner_ready] at @s run tag @s add bt_spawner_ready

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=34}] at @s run summon armor_stand ~0 ~1 ~0 ~ ~ bt_floor_node "BT_Floor"
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run tag @s add bt_tower_root
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_event 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players operation @s bt_variant = @e[type=armor_stand,name="BT_Builder",r=12,c=1] bt_variant
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players operation @s bt_floor = @e[type=armor_stand,name="BT_Builder",r=12,c=1] bt_floor
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_spawner_cnt 2
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_wave_state 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_wave_n 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_wave_total 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_wave_cd 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run scoreboard players set @s bt_trap_cd 0
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run function bt_wave_init
execute as @e[type=armor_stand,name="BT_Floor",tag=!bt_floor_ready] at @s run tag @s add bt_floor_ready

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=35}] at @s run setblock ~0 ~1 ~-4 chest ["facing_direction"=3]
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=37}] at @s run fill ~-6 ~3 ~-6 ~6 ~6 ~6 air []

# [Step 38-48] 在此区间执行第三章 50 种变体各自独立的【材质替换 + 专属外扩建筑结构改造 + 顶层专属Boss生成 + 专属战利品注入】指令！

# [Step 49-50] 单层完工上升与第10层封顶落成
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] at @s run scoreboard players add @s bt_dir 1
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_dir=2..,bt_step=49}] at @s run scoreboard players set @s bt_dir 0
# [工程扩展 D10] 上升前补支撑：任务书第 1 步的地基只对第 1 层生效，2 层起锚点悬空必坠（真机实测：建到第 5 层就原地打转）
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] unless score @s bt_variant matches 8 at @s run setblock ~ ~6 ~ cobblestone []
# [工程扩展 D10c] 上升目标格清空
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] unless score @s bt_variant matches 8 at @s run setblock ~ ~7 ~ air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] unless score @s bt_variant matches 8 at @s run tp @s ~ ~7 ~
# [工程扩展 D10b] 倒置塔下降前补支撑
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_variant=8,bt_step=49}] at @s run setblock ~ ~-8 ~ cobblestone []
# [工程扩展 D10c] 下降目标格清空
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_variant=8,bt_step=49}] at @s run setblock ~ ~-7 ~ air []
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_variant=8,bt_step=49}] at @s run tp @s ~ ~-7 ~
# [工程扩展 D11] 本 tick 真的上升过才打标（第 10 层完工时没有标记）
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] at @s run tag @s add bt_ascended
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=1..9,bt_step=49}] at @s run scoreboard players add @s bt_floor 1
# [工程扩展 D11] 刚升到新楼层 -> 步进清零；第 10 层完工不打标，bt_step 才能走到 50 触发封顶
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_step=49},tag=bt_ascended] at @s run scoreboard players set @s bt_step 0
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1},tag=bt_ascended] at @s run tag @s remove bt_ascended

execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=50}] at @s run playsound mob.wither.spawn @a[r=80] ~ ~ ~ 0.8 1.2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=50}] at @s run titleraw @a[r=80] title {"rawtext":[{"text":"§c§l战斗高塔已降临"}]}
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=50}] at @s run titleraw @a[r=80] subtitle {"rawtext":[{"text":"§e10层试炼开启 · 变体 #"},{"score":{"name":"@s","objective":"bt_variant"}}]}
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=50}] at @s run scoreboard players set @e[type=armor_stand,name="BT_Core",r=95,c=1] bt_state 2
execute as @e[type=armor_stand,name="BT_Builder",scores={bt_state=1,bt_floor=10,bt_step=50}] at @s run kill @s
