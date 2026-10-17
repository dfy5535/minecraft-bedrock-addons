# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0747/4224 | 主题内编号: b107/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·观星高塔与秘术地宫 (taiga_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~3 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-4 ~4 slot.container 9 lantern 4
replaceitem block ~3 ~-4 ~4 slot.container 10 sweet_berries 13
replaceitem block ~3 ~-4 ~4 slot.container 11 cooked_rabbit 8
replaceitem block ~3 ~-4 ~4 slot.container 12 cooked_salmon 9
replaceitem block ~3 ~-4 ~4 slot.container 13 spruce_log 20
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_ingot 11
loot insert ~3 ~-4 ~4 loot "rsf/taiga"
loot insert ~3 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~8 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 spruce_fence []
fill ~-2 ~7 ~-7 ~0 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 2 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 3 leather 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_rabbit 11
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 12
replaceitem block ~3 ~1 ~4 slot.container 11 spruce_log 16
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 13 coal 14
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 6
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
