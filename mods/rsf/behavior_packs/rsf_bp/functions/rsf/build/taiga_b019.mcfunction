# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0659/4224 | 主题内编号: b019/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·琉璃穹顶圣物秘室 (taiga_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 iron_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 string 8
replaceitem block ~2 ~-3 ~0 slot.container 1 gunpowder 7
replaceitem block ~2 ~-3 ~0 slot.container 2 rabbit_hide 8
replaceitem block ~2 ~-3 ~0 slot.container 3 leather 9
replaceitem block ~2 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 5 bone 15
replaceitem block ~2 ~-3 ~0 slot.container 9 spruce_log 22
replaceitem block ~2 ~-3 ~0 slot.container 10 iron_ingot 6
replaceitem block ~2 ~-3 ~0 slot.container 11 coal 13
replaceitem block ~2 ~-3 ~0 slot.container 12 emerald 5
replaceitem block ~2 ~-3 ~0 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-3 ~0 slot.container 14 campfire 6
loot insert ~2 ~-3 ~0 loot "rsf/taiga"
loot insert ~2 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 spruce_planks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 stripped_spruce_log []
setblock ~-5 ~8 ~-6 campfire []
setblock ~-5 ~7 ~6 stripped_spruce_log []
setblock ~-5 ~8 ~6 campfire []
setblock ~5 ~7 ~-6 stripped_spruce_log []
setblock ~5 ~8 ~-6 campfire []
setblock ~5 ~7 ~6 stripped_spruce_log []
setblock ~5 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~-2 ~0 ~-6 ~0 ~0 ~-7 mossy_cobblestone []
setblock ~-1 ~1 ~-7 campfire []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_fence []
fill ~0 ~1 ~-6 ~0 ~3 ~-6 spruce_fence []
fill ~-2 ~4 ~-6 ~0 ~4 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 2 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 3 leather 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 campfire 4
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 12 sweet_berries 16
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_rabbit 11
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 12
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
