# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1133/4224 | 主题内编号: b109/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·环柱能量矩阵奥术厅 (bamboo_jungle_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 4 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 5 arrow 19
replaceitem block ~4 ~-2 ~3 slot.container 9 cooked_chicken 10
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 11 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_apple 7
replaceitem block ~4 ~-2 ~3 slot.container 14 bow 1
loot insert ~4 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_mosaic []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 bamboo_block []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 bamboo_block []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 bamboo_block []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 bamboo_block []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 bamboo_block []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 bamboo_block []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 bamboo_block []
fill ~0 ~1 ~5 ~0 ~6 ~5 bamboo_block []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 bamboo_block []
fill ~2 ~1 ~5 ~2 ~6 ~5 bamboo_block []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 bamboo_block []
fill ~4 ~1 ~5 ~4 ~6 ~5 bamboo_block []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 bamboo_block []
fill ~6 ~1 ~5 ~6 ~6 ~5 bamboo_block []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 bamboo_block []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 bamboo_block []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 bamboo_block []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 bamboo_block []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 bamboo_block []
fill ~6 ~1 ~1 ~6 ~6 ~1 bamboo_block []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 bamboo_block []
fill ~6 ~1 ~3 ~6 ~6 ~3 bamboo_block []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 bamboo_mosaic []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 bamboo_planks []
fill ~0 ~13 ~0 ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 bamboo_block []
setblock ~0 ~4 ~-7 scaffolding []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 bamboo_block []
setblock ~0 ~4 ~7 scaffolding []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 bamboo_block []
setblock ~-8 ~4 ~0 scaffolding []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 bamboo_block []
setblock ~8 ~4 ~0 scaffolding []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 scaffolding []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 10 bamboo 32
replaceitem block ~5 ~1 ~3 slot.container 11 scaffolding 17
replaceitem block ~5 ~1 ~3 slot.container 12 melon_slice 14
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 11
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 10 bamboo 37
replaceitem block ~-5 ~1 ~4 slot.container 11 scaffolding 22
replaceitem block ~-5 ~1 ~4 slot.container 12 melon_slice 12
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 9
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
