# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1063/4224 | 主题内编号: b039/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·永恒圣火图腾方尖塔 (bamboo_jungle_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 bamboo_planks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 bamboo_mosaic []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 spider_eye 6
replaceitem block ~2 ~-2 ~1 slot.container 1 gunpowder 9
replaceitem block ~2 ~-2 ~1 slot.container 2 slime_ball 8
replaceitem block ~2 ~-2 ~1 slot.container 3 arrow 19
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-2 ~1 slot.container 5 string 17
replaceitem block ~2 ~-2 ~1 slot.container 9 emerald 9
replaceitem block ~2 ~-2 ~1 slot.container 10 gold_ingot 10
replaceitem block ~2 ~-2 ~1 slot.container 11 golden_apple 1
replaceitem block ~2 ~-2 ~1 slot.container 12 bow 1
replaceitem block ~2 ~-2 ~1 slot.container 13 lantern 6
replaceitem block ~2 ~-2 ~1 slot.container 14 bamboo 35
loot insert ~2 ~-2 ~1 loot "rsf/bamboo_jungle"
loot insert ~2 ~-2 ~1 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 bamboo_mosaic []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 stripped_bamboo_block []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 stripped_bamboo_block []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 stripped_bamboo_block []
fill ~4 ~1 ~3 ~4 ~9 ~3 stripped_bamboo_block []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 bamboo_fence []
setblock ~4 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 bamboo_mosaic []
fill ~0 ~15 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 stripped_bamboo_block []
setblock ~0 ~4 ~-5 gold_block []
setblock ~0 ~5 ~-5 campfire []
fill ~0 ~0 ~5 ~0 ~3 ~5 stripped_bamboo_block []
setblock ~0 ~4 ~5 gold_block []
setblock ~0 ~5 ~5 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 stripped_bamboo_block []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 stripped_bamboo_block []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x4x5) ---
fill ~5 ~1 ~-2 ~5 ~7 ~2 scaffolding []
fill ~4 ~7 ~-2 ~6 ~7 ~2 bamboo_mosaic_slab []
setblock ~5 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 1 string 12
replaceitem block ~3 ~1 ~1 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 3 bone 12
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 10
replaceitem block ~3 ~1 ~1 slot.container 10 bamboo 32
replaceitem block ~3 ~1 ~1 slot.container 11 scaffolding 17
replaceitem block ~3 ~1 ~1 slot.container 12 melon_slice 14
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_chicken 11
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 10
loot insert ~3 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 4 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 8
replaceitem block ~-3 ~1 ~2 slot.container 10 bamboo 37
replaceitem block ~-3 ~1 ~2 slot.container 11 scaffolding 22
replaceitem block ~-3 ~1 ~2 slot.container 12 melon_slice 12
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_chicken 9
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~-3 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~1 ~2 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
