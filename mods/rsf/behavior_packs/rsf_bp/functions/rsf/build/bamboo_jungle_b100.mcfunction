# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1124/4224 | 主题内编号: b100/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·半地下暗堡火力点 (bamboo_jungle_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 jungle_planks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 string 17
replaceitem block ~3 ~-4 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-4 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 4 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-4 ~2 slot.container 9 bow 1
replaceitem block ~3 ~-4 ~2 slot.container 10 lantern 8
replaceitem block ~3 ~-4 ~2 slot.container 11 bamboo 37
replaceitem block ~3 ~-4 ~2 slot.container 12 scaffolding 22
replaceitem block ~3 ~-4 ~2 slot.container 13 melon_slice 12
replaceitem block ~3 ~-4 ~2 slot.container 14 cooked_chicken 9
loot insert ~3 ~-4 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-4 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 bamboo_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 bamboo_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 bamboo_planks []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 bamboo_fence []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 bamboo_block []
setblock ~-5 ~6 ~-4 lantern []
setblock ~-5 ~5 ~4 bamboo_block []
setblock ~-5 ~6 ~4 lantern []
setblock ~5 ~5 ~-4 bamboo_block []
setblock ~5 ~6 ~-4 lantern []
setblock ~5 ~5 ~4 bamboo_block []
setblock ~5 ~6 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 bamboo_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~1 ~-2 ~6 ~8 ~2 scaffolding []
fill ~5 ~8 ~-2 ~7 ~8 ~2 bamboo_mosaic_slab []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 9 melon_slice 16
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_chicken 13
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 4
replaceitem block ~-4 ~1 ~2 slot.container 13 gold_ingot 5
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-4 ~0
