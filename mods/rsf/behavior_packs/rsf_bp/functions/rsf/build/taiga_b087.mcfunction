# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0727/4224 | 主题内编号: b087/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十字矿道枢纽补给室 (taiga_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~3 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-4 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-4 ~4 slot.container 10 campfire 8
replaceitem block ~3 ~-4 ~4 slot.container 11 lantern 4
replaceitem block ~3 ~-4 ~4 slot.container 12 sweet_berries 13
replaceitem block ~3 ~-4 ~4 slot.container 13 cooked_rabbit 8
replaceitem block ~3 ~-4 ~4 slot.container 14 cooked_salmon 9
loot insert ~3 ~-4 ~4 loot "rsf/taiga"
loot insert ~3 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~4 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 cobblestone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mossy_stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-3 ~0 ~-6 ~-1 ~0 ~-7 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_fence []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_fence []
fill ~-3 ~7 ~-6 ~-1 ~7 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_rabbit 12
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 6
replaceitem block ~4 ~1 ~5 slot.container 11 spruce_log 17
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 coal 15
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 7
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
