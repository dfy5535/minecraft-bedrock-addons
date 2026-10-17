# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1032/4224 | 主题内编号: b008/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·凯旋双拱圣物祭坛 (bamboo_jungle_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 jungle_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 jungle_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 bamboo_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 jungle_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 bamboo_planks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 bamboo_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 bamboo_block []
setblock ~-6 ~8 ~-4 lantern []
setblock ~-6 ~7 ~4 bamboo_block []
setblock ~-6 ~8 ~4 lantern []
setblock ~6 ~7 ~-4 bamboo_block []
setblock ~6 ~8 ~-4 lantern []
setblock ~6 ~7 ~4 bamboo_block []
setblock ~6 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 string 12
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 9 gold_ingot 7
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 13 bamboo 32
replaceitem block ~-5 ~1 ~2 slot.container 14 scaffolding 17
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
