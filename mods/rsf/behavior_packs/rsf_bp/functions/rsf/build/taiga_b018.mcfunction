# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0658/4224 | 主题内编号: b018/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·L型转角领主秘宝屋 (taiga_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 cobblestone []
fill ~-5 ~1 ~0 ~5 ~4 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 cobblestone_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 stripped_spruce_log []
setblock ~-6 ~4 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 stripped_spruce_log []
setblock ~-6 ~4 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 stripped_spruce_log []
setblock ~6 ~4 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~3 ~7 stripped_spruce_log []
setblock ~6 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-6 ~0 ~0 ~-7 mossy_cobblestone []
setblock ~-1 ~1 ~-7 campfire []
fill ~-2 ~1 ~-6 ~-2 ~7 ~-6 spruce_fence []
fill ~0 ~1 ~-6 ~0 ~7 ~-6 spruce_fence []
fill ~-2 ~8 ~-6 ~0 ~8 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 10 coal 13
replaceitem block ~-4 ~1 ~5 slot.container 11 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 13 campfire 6
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 9
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 rabbit_hide 6
replaceitem block ~4 ~1 ~5 slot.container 2 leather 7
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 coal 18
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 13 campfire 4
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 7
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
