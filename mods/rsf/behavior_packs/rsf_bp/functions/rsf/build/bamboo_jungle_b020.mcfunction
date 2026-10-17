# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1044/4224 | 主题内编号: b020/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·重甲防爆金库房间 (bamboo_jungle_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bamboo_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 string 17
replaceitem block ~3 ~-3 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~3 ~-3 ~2 slot.container 11 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 12 lantern 4
replaceitem block ~3 ~-3 ~2 slot.container 13 bamboo 33
replaceitem block ~3 ~-3 ~2 slot.container 14 scaffolding 18
loot insert ~3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~7 ~-3 bamboo_planks []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~1 ~3 ~-4 ~7 ~4 bamboo_planks []
setblock ~-5 ~8 ~3 lantern []
fill ~4 ~1 ~-4 ~5 ~7 ~-3 bamboo_planks []
setblock ~4 ~8 ~-4 lantern []
fill ~4 ~1 ~3 ~5 ~7 ~4 bamboo_planks []
setblock ~4 ~8 ~3 lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 bamboo_planks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 bamboo_fence []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 bamboo_block []
setblock ~-5 ~7 ~-4 lantern []
setblock ~-5 ~6 ~4 bamboo_block []
setblock ~-5 ~7 ~4 lantern []
setblock ~5 ~6 ~-4 bamboo_block []
setblock ~5 ~7 ~-4 lantern []
setblock ~5 ~6 ~4 bamboo_block []
setblock ~5 ~7 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 bamboo_block []
fill ~-6 ~0 ~2 ~-6 ~4 ~2 bamboo_block []
fill ~6 ~0 ~-2 ~6 ~4 ~-2 bamboo_block []
fill ~6 ~0 ~2 ~6 ~4 ~2 bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~1 ~-2 ~6 ~8 ~2 scaffolding []
fill ~5 ~8 ~-2 ~7 ~8 ~2 bamboo_mosaic_slab []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 9 melon_slice 13
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_chicken 10
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~2 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
