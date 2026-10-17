# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1014/4224 | 主题内编号: b118/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·L型蜂农与林果采集屋 (jungle_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 jungle_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_sword 1
loot insert ~0 ~-3 ~-4 loot "rsf/jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 mossy_cobblestone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 jungle_planks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~7 ~-9 ~5 ~8 mossy_stone_bricks []
setblock ~-8 ~6 ~7 gold_block []
setblock ~-8 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 smoker []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 bamboo 18
replaceitem block ~-4 ~1 ~5 slot.container 10 jungle_log 16
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 6
replaceitem block ~4 ~1 ~5 slot.container 9 bamboo 16
replaceitem block ~4 ~1 ~5 slot.container 10 jungle_log 21
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
