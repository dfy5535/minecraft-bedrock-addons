# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1047/4224 | 主题内编号: b023/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双层露台阁楼宝室 (bamboo_jungle_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 bamboo_mosaic [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 bamboo_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 bamboo_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 bamboo_mosaic []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 bamboo_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 jungle_planks []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 bamboo_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 jungle_planks []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 bamboo_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 jungle_planks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~1 ~-2 ~6 ~6 ~2 scaffolding []
fill ~5 ~6 ~-2 ~7 ~6 ~2 bamboo_mosaic_slab []
setblock ~6 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 12
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 3 bone 12
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 scaffolding 20
replaceitem block ~4 ~1 ~3 slot.container 10 melon_slice 17
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_chicken 14
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 6
loot insert ~4 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 9 scaffolding 18
replaceitem block ~-4 ~1 ~4 slot.container 10 melon_slice 15
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_chicken 12
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 13 emerald 10
replaceitem block ~-4 ~1 ~4 slot.container 14 gold_ingot 4
loot insert ~-4 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~4 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
