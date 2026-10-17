# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0713/4224 | 主题内编号: b073/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·八方图腾圣火石阵 (taiga_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rabbit_hide 8
replaceitem block ~3 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 4 arrow 22
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 9 spruce_log 18
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 11 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 14 campfire 2
loot insert ~3 ~-3 ~4 loot "rsf/taiga"
loot insert ~3 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 air []
fill ~5 ~1 ~6 ~5 ~7 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stripped_spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stripped_spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stripped_spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 stripped_spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 stripped_spruce_log []
setblock ~-5 ~9 ~-6 campfire []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 stripped_spruce_log []
setblock ~-5 ~9 ~6 campfire []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 stripped_spruce_log []
setblock ~5 ~9 ~-6 campfire []
fill ~5 ~6 ~6 ~5 ~8 ~6 stripped_spruce_log []
setblock ~5 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 spruce_fence []
fill ~-2 ~8 ~-7 ~0 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 iron_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 5 leather 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 10 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_rabbit 7
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 13 spruce_log 19
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
