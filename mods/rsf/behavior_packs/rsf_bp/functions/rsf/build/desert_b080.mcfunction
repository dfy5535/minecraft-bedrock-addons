# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1360/4224 | 主题内编号: b080/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·悬灯祈福图腾花坛 (desert_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 smooth_sandstone []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 cut_sandstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 cut_sandstone_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 smooth_sandstone []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cut_sandstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 smooth_sandstone []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 sandstone_slab []
setblock ~0 ~12 ~0 orange_terracotta []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_sandstone []
setblock ~0 ~4 ~-6 lapis_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_sandstone []
setblock ~0 ~4 ~6 lapis_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_sandstone []
setblock ~-7 ~4 ~0 lapis_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_sandstone []
setblock ~7 ~4 ~0 lapis_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-6 ~-9 ~5 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~5 ~-7 chiseled_sandstone []
setblock ~-8 ~6 ~-6 gold_block []
setblock ~8 ~6 ~-6 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 10 enchanted_golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 11 bread 14
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 4
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
