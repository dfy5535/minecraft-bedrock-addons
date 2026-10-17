# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0737/4224 | 主题内编号: b097/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·八角射击孔防御棱堡 (taiga_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 gunpowder 7
replaceitem block ~-2 ~-2 ~3 slot.container 1 rabbit_hide 8
replaceitem block ~-2 ~-2 ~3 slot.container 2 leather 9
replaceitem block ~-2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 bone 15
replaceitem block ~-2 ~-2 ~3 slot.container 5 arrow 22
replaceitem block ~-2 ~-2 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-2 ~-2 ~3 slot.container 10 coal 18
replaceitem block ~-2 ~-2 ~3 slot.container 11 emerald 3
replaceitem block ~-2 ~-2 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-2 ~-2 ~3 slot.container 13 campfire 4
replaceitem block ~-2 ~-2 ~3 slot.container 14 lantern 7
loot insert ~-2 ~-2 ~3 loot "rsf/taiga"
loot insert ~-2 ~-2 ~3 loot "chests/village/village_taiga_house"

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

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 stripped_spruce_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 stripped_spruce_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 stripped_spruce_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 stripped_spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-3 ~0 ~-7 ~-1 ~0 ~-8 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 spruce_fence []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 spruce_fence []
fill ~-3 ~7 ~-7 ~-1 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 5 leather 12
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_rabbit 8
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 9
replaceitem block ~4 ~1 ~5 slot.container 11 spruce_log 20
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 13 coal 18
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 3
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
