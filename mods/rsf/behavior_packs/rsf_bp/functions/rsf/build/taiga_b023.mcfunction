# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0663/4224 | 主题内编号: b023/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双层露台阁楼宝室 (taiga_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log2
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 spruce_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 spruce_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 iron_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~0 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 10 emerald 8
replaceitem block ~0 ~-4 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 12 campfire 2
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~4 slot.container 14 sweet_berries 14
loot insert ~0 ~-4 ~4 loot "rsf/taiga"
loot insert ~0 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~3 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~2 ~5 air []
fill ~-5 ~3 ~-7 ~5 ~3 ~7 spruce_slab []
fill ~-3 ~4 ~-5 ~3 ~7 ~5 spruce_planks []
fill ~-2 ~4 ~-4 ~2 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 spruce_slab []
fill ~-3 ~8 ~-5 ~3 ~9 ~5 spruce_planks []
fill ~-4 ~10 ~-6 ~4 ~10 ~6 spruce_slab []
setblock ~0 ~11 ~0 iron_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 spruce_planks []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x9x6) ---
fill ~-2 ~0 ~-8 ~0 ~0 ~-9 mossy_cobblestone []
setblock ~-1 ~1 ~-9 campfire []
fill ~-2 ~1 ~-8 ~-2 ~7 ~-8 spruce_fence []
fill ~0 ~1 ~-8 ~0 ~7 ~-8 spruce_fence []
fill ~-2 ~8 ~-8 ~0 ~8 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 10
replaceitem block ~3 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 10 sweet_berries 18
replaceitem block ~3 ~1 ~5 slot.container 11 cooked_rabbit 6
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_salmon 7
replaceitem block ~3 ~1 ~5 slot.container 13 spruce_log 18
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~3 ~1 ~5 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
