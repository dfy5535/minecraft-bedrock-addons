# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0687/4224 | 主题内编号: b047/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·深渊跨桥决斗长台 (taiga_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 arrow 22
replaceitem block ~-4 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~-4 ~3 slot.container 2 string 8
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 7
replaceitem block ~-4 ~-4 ~3 slot.container 4 rabbit_hide 8
replaceitem block ~-4 ~-4 ~3 slot.container 5 leather 9
replaceitem block ~-4 ~-4 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~-4 ~3 slot.container 10 campfire 5
replaceitem block ~-4 ~-4 ~3 slot.container 11 lantern 8
replaceitem block ~-4 ~-4 ~3 slot.container 12 sweet_berries 17
replaceitem block ~-4 ~-4 ~3 slot.container 13 cooked_rabbit 12
replaceitem block ~-4 ~-4 ~3 slot.container 14 cooked_salmon 6
loot insert ~-4 ~-4 ~3 loot "rsf/taiga"
loot insert ~-4 ~-4 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~1 ~0 ~-7 ~3 ~0 ~-8 mossy_cobblestone []
setblock ~2 ~1 ~-8 campfire []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 spruce_fence []
fill ~3 ~1 ~-7 ~3 ~6 ~-7 spruce_fence []
fill ~1 ~7 ~-7 ~3 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 bone 10
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 string 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_rabbit 7
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_salmon 8
replaceitem block ~5 ~1 ~4 slot.container 11 spruce_log 19
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~5 ~1 ~4 slot.container 14 emerald 9
loot insert ~5 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
