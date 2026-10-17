# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1288/4224 | 主题内编号: b008/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·凯旋双拱圣物祭坛 (desert_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cut_sandstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cut_sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 smooth_sandstone []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 cut_sandstone []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 smooth_sandstone []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 birch_fence []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 chiseled_sandstone []
setblock ~-6 ~10 ~-4 lantern []
setblock ~-6 ~9 ~4 chiseled_sandstone []
setblock ~-6 ~10 ~4 lantern []
setblock ~6 ~9 ~-4 chiseled_sandstone []
setblock ~6 ~10 ~-4 lantern []
setblock ~6 ~9 ~4 chiseled_sandstone []
setblock ~6 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~5 ~-6 chiseled_sandstone []
setblock ~-9 ~6 ~-6 torch []
fill ~-9 ~0 ~6 ~-9 ~5 ~6 chiseled_sandstone []
setblock ~-9 ~6 ~6 torch []
fill ~9 ~0 ~-6 ~9 ~5 ~-6 chiseled_sandstone []
setblock ~9 ~6 ~-6 torch []
fill ~9 ~0 ~6 ~9 ~5 ~6 chiseled_sandstone []
setblock ~9 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-10 ~8 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~8 ~-7 chiseled_sandstone []
setblock ~-9 ~9 ~-6 gold_block []
setblock ~9 ~9 ~-6 gold_block []
setblock ~2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~-5 ~1 ~2 slot.container 12 tnt 7
replaceitem block ~-5 ~1 ~2 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
