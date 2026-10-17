# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1128/4224 | 主题内编号: b104/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双层指挥台卫戍堡 (bamboo_jungle_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 jungle_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 jungle_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 string 17
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~-3 ~3 slot.container 9 bow 1
replaceitem block ~4 ~-3 ~3 slot.container 10 lantern 9
replaceitem block ~4 ~-3 ~3 slot.container 11 bamboo 38
replaceitem block ~4 ~-3 ~3 slot.container 12 scaffolding 16
replaceitem block ~4 ~-3 ~3 slot.container 13 melon_slice 13
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_chicken 10
loot insert ~4 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~3 ~5 jungle_planks []
fill ~-5 ~1 ~-4 ~5 ~2 ~4 air []
fill ~-7 ~3 ~-6 ~7 ~3 ~6 bamboo_slab []
fill ~-5 ~4 ~-4 ~5 ~7 ~4 bamboo_planks []
fill ~-4 ~4 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 bamboo_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 bamboo_block []
setblock ~-6 ~9 ~-5 lantern []
setblock ~-6 ~8 ~5 bamboo_block []
setblock ~-6 ~9 ~5 lantern []
setblock ~6 ~8 ~-5 bamboo_block []
setblock ~6 ~9 ~-5 lantern []
setblock ~6 ~8 ~5 bamboo_block []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 bamboo_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 12
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 10
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
