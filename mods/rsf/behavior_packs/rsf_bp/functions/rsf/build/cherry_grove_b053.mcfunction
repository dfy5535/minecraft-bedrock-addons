# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1845/4224 | 主题内编号: b053/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·测绘师观景制图站 (cherry_grove_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 cherry_planks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 cherry_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cherry_planks []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 cherry_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 amethyst_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 cherry_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 cherry_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 cherry_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cherry_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~7 ~-8 cherry_log []
fill ~-3 ~7 ~-8 ~3 ~7 ~-8 cherry_slab []
fill ~-2 ~6 ~-8 ~2 ~6 ~-8 stripped_cherry_log []
setblock ~1 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 2 feather 15
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 10
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~4 ~1 ~2 slot.container 11 amethyst_shard 12
replaceitem block ~4 ~1 ~2 slot.container 12 bow 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 14 cherry_log 18
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~3 slot.container 11 amethyst_shard 10
replaceitem block ~-4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 14 cherry_log 16
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
