# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1109/4224 | 主题内编号: b085/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子烟囱砖石窑厂 (bamboo_jungle_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bamboo_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bamboo_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 bamboo_planks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-2 ~2 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~2 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~2 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 4 slime_ball 8
replaceitem block ~4 ~-2 ~2 slot.container 5 arrow 19
replaceitem block ~4 ~-2 ~2 slot.container 9 cooked_chicken 10
replaceitem block ~4 ~-2 ~2 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-2 ~2 slot.container 11 emerald 8
replaceitem block ~4 ~-2 ~2 slot.container 12 gold_ingot 9
replaceitem block ~4 ~-2 ~2 slot.container 13 golden_apple 7
replaceitem block ~4 ~-2 ~2 slot.container 14 bow 1
loot insert ~4 ~-2 ~2 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 bamboo_planks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 bamboo_planks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 bamboo_mosaic []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 bamboo_mosaic []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 bamboo_planks []
fill ~0 ~13 ~0 ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bamboo_mosaic []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 bamboo_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 bamboo_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 bamboo_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 string 12
replaceitem block ~5 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~2 slot.container 5 bone 12
replaceitem block ~5 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~2 slot.container 10 bow 1
replaceitem block ~5 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~2 slot.container 12 bamboo 38
replaceitem block ~5 ~1 ~2 slot.container 13 scaffolding 16
replaceitem block ~5 ~1 ~2 slot.container 14 melon_slice 13
loot insert ~5 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 string 15
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 12 bamboo 36
replaceitem block ~-5 ~1 ~3 slot.container 13 scaffolding 21
replaceitem block ~-5 ~1 ~3 slot.container 14 melon_slice 18
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~3 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
