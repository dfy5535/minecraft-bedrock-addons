# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1115/4224 | 主题内编号: b091/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·跨水拱桥水神小祠 (bamboo_jungle_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 bamboo_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 stone_bricks []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 slime_ball 8
replaceitem block ~-4 ~-2 ~1 slot.container 1 arrow 19
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~1 slot.container 3 string 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~-2 ~1 slot.container 5 bone 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 scaffolding 19
replaceitem block ~-4 ~-2 ~1 slot.container 10 melon_slice 16
replaceitem block ~-4 ~-2 ~1 slot.container 11 cooked_chicken 13
replaceitem block ~-4 ~-2 ~1 slot.container 12 iron_ingot 12
replaceitem block ~-4 ~-2 ~1 slot.container 13 emerald 4
replaceitem block ~-4 ~-2 ~1 slot.container 14 gold_ingot 5
loot insert ~-4 ~-2 ~1 loot "rsf/bamboo_jungle"
loot insert ~-4 ~-2 ~1 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~6 ~3 bamboo_mosaic []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 bamboo_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 jungle_planks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 bamboo_slab []
setblock ~0 ~10 ~0 emerald_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~1 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 string 12
replaceitem block ~5 ~1 ~1 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~1 slot.container 10 gold_ingot 7
replaceitem block ~5 ~1 ~1 slot.container 11 golden_apple 5
replaceitem block ~5 ~1 ~1 slot.container 12 bow 1
replaceitem block ~5 ~1 ~1 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~1 slot.container 14 bamboo 32
loot insert ~5 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 string 15
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 10 gold_ingot 5
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 12 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~-5 ~1 ~2 slot.container 14 bamboo 37
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~2 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
