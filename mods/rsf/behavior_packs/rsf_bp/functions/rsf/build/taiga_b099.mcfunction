# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0739/4224 | 主题内编号: b099/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·铁闸门瓮城防御堡 (taiga_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
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
fill ~-5 ~1 ~-5 ~5 ~6 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 mossy_stone_bricks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone_wall []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 spruce_log []
setblock ~-5 ~8 ~-5 lantern []
setblock ~-5 ~7 ~5 spruce_log []
setblock ~-5 ~8 ~5 lantern []
setblock ~5 ~7 ~-5 spruce_log []
setblock ~5 ~8 ~-5 lantern []
setblock ~5 ~7 ~5 spruce_log []
setblock ~5 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-1 ~0 ~-5 ~1 ~0 ~-6 mossy_cobblestone []
setblock ~0 ~1 ~-6 campfire []
fill ~-1 ~1 ~-5 ~-1 ~3 ~-5 spruce_fence []
fill ~1 ~1 ~-5 ~1 ~3 ~-5 spruce_fence []
fill ~-1 ~4 ~-5 ~1 ~4 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 11
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~4 slot.container 2 rabbit_hide 11
replaceitem block ~4 ~1 ~4 slot.container 3 leather 12
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 bone 10
replaceitem block ~4 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 10 campfire 7
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~4 slot.container 12 sweet_berries 12
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_rabbit 7
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_salmon 8
loot insert ~4 ~1 ~4 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
