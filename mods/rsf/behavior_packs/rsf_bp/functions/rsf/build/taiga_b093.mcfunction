# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0733/4224 | 主题内编号: b093/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·U型庭院神道祈福祠 (taiga_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 spruce_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 bone 15
replaceitem block ~-3 ~-4 ~4 slot.container 1 arrow 22
replaceitem block ~-3 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~-3 ~-4 ~4 slot.container 3 string 8
replaceitem block ~-3 ~-4 ~4 slot.container 4 gunpowder 7
replaceitem block ~-3 ~-4 ~4 slot.container 5 rabbit_hide 8
replaceitem block ~-3 ~-4 ~4 slot.container 9 campfire 6
replaceitem block ~-3 ~-4 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~-4 ~4 slot.container 11 sweet_berries 18
replaceitem block ~-3 ~-4 ~4 slot.container 12 cooked_rabbit 6
replaceitem block ~-3 ~-4 ~4 slot.container 13 cooked_salmon 7
replaceitem block ~-3 ~-4 ~4 slot.container 14 spruce_log 18
loot insert ~-3 ~-4 ~4 loot "rsf/taiga"
loot insert ~-3 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 podzol []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 stone_brick_slab []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_slab []
setblock ~0 ~9 ~0 barrel []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-6 ~0 ~0 ~-7 mossy_cobblestone []
setblock ~-1 ~1 ~-7 campfire []
fill ~-2 ~1 ~-6 ~-2 ~7 ~-6 spruce_fence []
fill ~0 ~1 ~-6 ~0 ~7 ~-6 spruce_fence []
fill ~-2 ~8 ~-6 ~0 ~8 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 iron_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 10 sweet_berries 18
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_rabbit 6
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 7
replaceitem block ~4 ~1 ~5 slot.container 13 spruce_log 18
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
