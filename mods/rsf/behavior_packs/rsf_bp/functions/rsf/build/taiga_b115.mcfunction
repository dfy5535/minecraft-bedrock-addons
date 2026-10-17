# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0755/4224 | 主题内编号: b115/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·阶梯立体生态种植台 (taiga_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 rabbit_hide 8
replaceitem block ~-3 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~-3 ~4 slot.container 4 arrow 22
replaceitem block ~-3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 9 cooked_rabbit 6
replaceitem block ~-3 ~-3 ~4 slot.container 10 cooked_salmon 7
replaceitem block ~-3 ~-3 ~4 slot.container 11 spruce_log 18
replaceitem block ~-3 ~-3 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-3 ~-3 ~4 slot.container 13 coal 16
replaceitem block ~-3 ~-3 ~4 slot.container 14 emerald 8
loot insert ~-3 ~-3 ~4 loot "rsf/taiga"
loot insert ~-3 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 mossy_stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 spruce_log []
setblock ~-5 ~8 ~-6 lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 spruce_log []
setblock ~-5 ~8 ~6 lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 spruce_log []
setblock ~5 ~8 ~-6 lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 spruce_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~0 ~0 ~-7 ~2 ~0 ~-8 mossy_cobblestone []
setblock ~1 ~1 ~-8 campfire []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_fence []
fill ~2 ~1 ~-7 ~2 ~4 ~-7 spruce_fence []
fill ~0 ~5 ~-7 ~2 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 3 leather 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 coal 18
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 campfire 4
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 sweet_berries 16
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
