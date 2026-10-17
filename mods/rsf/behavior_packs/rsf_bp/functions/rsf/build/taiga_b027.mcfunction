# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0667/4224 | 主题内编号: b027/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子连廊警戒塔楼 (taiga_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cobblestone_wall []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~-5 ~9 ~-4 spruce_log []
setblock ~-5 ~10 ~-4 lantern []
setblock ~-5 ~9 ~4 spruce_log []
setblock ~-5 ~10 ~4 lantern []
setblock ~5 ~9 ~-4 spruce_log []
setblock ~5 ~10 ~-4 lantern []
setblock ~5 ~9 ~4 spruce_log []
setblock ~5 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 spruce_log []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 spruce_log []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 spruce_log []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 spruce_log []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-3 ~0 ~-4 ~-1 ~0 ~-5 mossy_cobblestone []
setblock ~-2 ~1 ~-5 campfire []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 spruce_fence []
fill ~-1 ~1 ~-4 ~-1 ~6 ~-4 spruce_fence []
fill ~-3 ~7 ~-4 ~-1 ~7 ~-5 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 rabbit_hide 11
replaceitem block ~4 ~1 ~3 slot.container 3 leather 12
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 10
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_rabbit 8
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_salmon 9
replaceitem block ~4 ~1 ~3 slot.container 11 spruce_log 20
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 13 coal 18
replaceitem block ~4 ~1 ~3 slot.container 14 emerald 3
loot insert ~4 ~1 ~3 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
