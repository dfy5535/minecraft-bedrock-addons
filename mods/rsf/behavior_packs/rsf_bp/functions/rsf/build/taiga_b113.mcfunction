# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0753/4224 | 主题内编号: b113/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·八角全采光生态温室 (taiga_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 arrow 22
replaceitem block ~3 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 rabbit_hide 8
replaceitem block ~3 ~-4 ~5 slot.container 5 leather 9
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 13
replaceitem block ~3 ~-4 ~5 slot.container 10 emerald 5
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 12 campfire 6
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 14 sweet_berries 18
loot insert ~3 ~-4 ~5 loot "rsf/taiga"
loot insert ~3 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 stripped_spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 spruce_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~0 ~0 ~-7 ~2 ~0 ~-8 mossy_cobblestone []
setblock ~1 ~1 ~-8 campfire []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 spruce_fence []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 spruce_fence []
fill ~0 ~8 ~-7 ~2 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 4 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 5 leather 12
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 10 sweet_berries 17
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_rabbit 12
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_salmon 6
replaceitem block ~3 ~1 ~4 slot.container 13 spruce_log 17
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
