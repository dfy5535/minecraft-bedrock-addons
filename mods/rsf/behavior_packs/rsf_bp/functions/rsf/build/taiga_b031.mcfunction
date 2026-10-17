# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0671/4224 | 主题内编号: b031/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·阶梯圣火烽火台 (taiga_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 spruce_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 string 8
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~3 ~-3 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 10 campfire 5
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 8
replaceitem block ~3 ~-3 ~4 slot.container 12 sweet_berries 17
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_rabbit 12
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_salmon 6
loot insert ~3 ~-3 ~4 loot "rsf/taiga"
loot insert ~3 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 mossy_stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 spruce_log []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 spruce_log []
setblock ~-5 ~11 ~6 lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 spruce_log []
setblock ~5 ~11 ~-6 lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 spruce_log []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_cobblestone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~1 ~0 ~-7 ~3 ~0 ~-8 mossy_cobblestone []
setblock ~2 ~1 ~-8 campfire []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 spruce_fence []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 spruce_fence []
fill ~1 ~6 ~-7 ~3 ~6 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 spruce_log 22
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 coal 13
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 campfire 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
