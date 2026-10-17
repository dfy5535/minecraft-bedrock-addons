# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1123/4224 | 主题内编号: b099/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·铁闸门瓮城防御堡 (bamboo_jungle_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 bamboo_planks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 jungle_planks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~2 slot.container 1 string 17
replaceitem block ~4 ~-2 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~4 ~-2 ~2 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~2 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~2 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 9 cooked_chicken 14
replaceitem block ~4 ~-2 ~2 slot.container 10 iron_ingot 6
replaceitem block ~4 ~-2 ~2 slot.container 11 emerald 5
replaceitem block ~4 ~-2 ~2 slot.container 12 gold_ingot 6
replaceitem block ~4 ~-2 ~2 slot.container 13 golden_apple 4
replaceitem block ~4 ~-2 ~2 slot.container 14 bow 1
loot insert ~4 ~-2 ~2 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 bamboo_mosaic []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 stone_bricks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 bamboo_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 stripped_bamboo_block []
setblock ~-6 ~8 ~-4 campfire []
setblock ~-6 ~7 ~4 stripped_bamboo_block []
setblock ~-6 ~8 ~4 campfire []
setblock ~6 ~7 ~-4 stripped_bamboo_block []
setblock ~6 ~8 ~-4 campfire []
setblock ~6 ~7 ~4 stripped_bamboo_block []
setblock ~6 ~8 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 5 string 12
replaceitem block ~5 ~1 ~2 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~2 slot.container 10 bamboo 36
replaceitem block ~5 ~1 ~2 slot.container 11 scaffolding 21
replaceitem block ~5 ~1 ~2 slot.container 12 melon_slice 18
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_chicken 8
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 3 string 15
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 10 bamboo 34
replaceitem block ~-5 ~1 ~3 slot.container 11 scaffolding 19
replaceitem block ~-5 ~1 ~3 slot.container 12 melon_slice 16
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_chicken 13
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~3 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
