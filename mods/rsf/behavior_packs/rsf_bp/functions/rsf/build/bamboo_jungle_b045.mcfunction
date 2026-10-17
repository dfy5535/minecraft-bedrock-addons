# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1069/4224 | 主题内编号: b045/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·十二柱神殿试炼场 (bamboo_jungle_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bamboo_planks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~4 slot.container 1 arrow 19
replaceitem block ~0 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 3 string 17
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-2 ~4 slot.container 5 bone 17
replaceitem block ~0 ~-2 ~4 slot.container 9 lantern 6
replaceitem block ~0 ~-2 ~4 slot.container 10 bamboo 35
replaceitem block ~0 ~-2 ~4 slot.container 11 scaffolding 20
replaceitem block ~0 ~-2 ~4 slot.container 12 melon_slice 17
replaceitem block ~0 ~-2 ~4 slot.container 13 cooked_chicken 14
replaceitem block ~0 ~-2 ~4 slot.container 14 iron_ingot 6
loot insert ~0 ~-2 ~4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 bamboo_mosaic []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 bamboo_block []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 bamboo_block []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 bamboo_block []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 bamboo_block []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 bamboo_block []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 bamboo_block []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 bamboo_block []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 bamboo_block []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 bamboo_block []
fill ~1 ~1 ~6 ~1 ~5 ~6 bamboo_block []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 bamboo_block []
fill ~3 ~1 ~6 ~3 ~5 ~6 bamboo_block []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 bamboo_block []
fill ~5 ~1 ~6 ~5 ~5 ~6 bamboo_block []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 bamboo_block []
fill ~7 ~1 ~6 ~7 ~5 ~6 bamboo_block []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 bamboo_block []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 bamboo_block []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 bamboo_block []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 bamboo_block []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 bamboo_block []
fill ~7 ~1 ~0 ~7 ~5 ~0 bamboo_block []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 bamboo_block []
fill ~7 ~1 ~2 ~7 ~5 ~2 bamboo_block []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 bamboo_block []
fill ~7 ~1 ~4 ~7 ~5 ~4 bamboo_block []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 bamboo_block []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 bamboo_block []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 bamboo_block []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 bamboo_block []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 bamboo_block []
setblock ~0 ~4 ~-8 scaffolding []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 bamboo_block []
setblock ~0 ~4 ~8 scaffolding []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 bamboo_block []
setblock ~-9 ~4 ~0 scaffolding []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 bamboo_block []
setblock ~9 ~4 ~0 scaffolding []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~1 ~-2 ~8 ~8 ~2 scaffolding []
fill ~7 ~8 ~-2 ~9 ~8 ~2 bamboo_mosaic_slab []
setblock ~8 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 scaffolding []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 string 12
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 10 bow 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 4
replaceitem block ~6 ~1 ~4 slot.container 12 bamboo 33
replaceitem block ~6 ~1 ~4 slot.container 13 scaffolding 18
replaceitem block ~6 ~1 ~4 slot.container 14 melon_slice 15
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 string 15
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 10 bow 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 12 bamboo 38
replaceitem block ~-6 ~1 ~5 slot.container 13 scaffolding 16
replaceitem block ~-6 ~1 ~5 slot.container 14 melon_slice 13
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
