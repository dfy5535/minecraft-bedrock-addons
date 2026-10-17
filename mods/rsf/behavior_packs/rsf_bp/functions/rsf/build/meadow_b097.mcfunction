# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2017/4224 | 主题内编号: b097/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·八角射击孔防御棱堡 (meadow_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 1 emerald 7
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 9 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 7
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 5
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_mutton 12
loot insert ~3 ~-3 ~4 loot "rsf/meadow"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 stripped_spruce_log []
setblock ~-5 ~9 ~-6 lantern []
setblock ~-5 ~8 ~6 stripped_spruce_log []
setblock ~-5 ~9 ~6 lantern []
setblock ~5 ~8 ~-6 stripped_spruce_log []
setblock ~5 ~9 ~-6 lantern []
setblock ~5 ~8 ~6 stripped_spruce_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-1 ~7 ~6 ~1 calcite []
setblock ~7 ~7 ~0 emerald_block []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 leather 13
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 9 bread 11
replaceitem block ~4 ~1 ~5 slot.container 10 honey_bottle 5
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 coal 17
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
