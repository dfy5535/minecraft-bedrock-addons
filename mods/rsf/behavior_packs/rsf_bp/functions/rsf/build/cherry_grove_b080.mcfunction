# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1872/4224 | 主题内编号: b080/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·悬灯祈福图腾花坛 (cherry_grove_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cherry_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 stone_brick_slab []
fill ~-4 ~4 ~-3 ~4 ~6 ~3 calcite []
fill ~-3 ~4 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 calcite []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cherry_slab []
setblock ~0 ~10 ~0 honeycomb_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stripped_cherry_log []
setblock ~0 ~4 ~-6 amethyst_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 stripped_cherry_log []
setblock ~0 ~4 ~6 amethyst_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_cherry_log []
setblock ~-7 ~4 ~0 amethyst_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_cherry_log []
setblock ~7 ~4 ~0 amethyst_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-2 ~0 ~-8 ~-2 ~4 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~4 ~-8 cherry_log []
fill ~-3 ~4 ~-8 ~3 ~4 ~-8 cherry_slab []
fill ~-2 ~3 ~-8 ~2 ~3 ~-8 stripped_cherry_log []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 2 string 10
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 7
replaceitem block ~-4 ~1 ~2 slot.container 10 amethyst_shard 10
replaceitem block ~-4 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 cherry_log 16
replaceitem block ~-4 ~1 ~2 slot.container 14 cherry_sapling 5
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
