# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1094/4224 | 主题内编号: b070/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·风化坍塌阶梯祭台 (bamboo_jungle_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 4 arrow 19
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 gold_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 11 bow 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 5
replaceitem block ~4 ~-3 ~3 slot.container 13 bamboo 34
replaceitem block ~4 ~-3 ~3 slot.container 14 scaffolding 19
loot insert ~4 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 bamboo_planks []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 bamboo_mosaic []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 bamboo_mosaic_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 jungle_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 jungle_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 jungle_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 jungle_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 string 12
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 melon_slice 14
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_chicken 11
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 1
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-3 ~0
