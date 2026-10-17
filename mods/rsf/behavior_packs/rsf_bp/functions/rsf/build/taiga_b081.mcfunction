# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0721/4224 | 主题内编号: b081/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双高炉重工冶炼密室 (taiga_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_cobblestone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 spruce_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 iron_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~0 slot.container 2 arrow 22
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 10 campfire 4
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 12 sweet_berries 16
replaceitem block ~3 ~-3 ~0 slot.container 13 cooked_rabbit 11
replaceitem block ~3 ~-3 ~0 slot.container 14 cooked_salmon 12
loot insert ~3 ~-3 ~0 loot "rsf/taiga"
loot insert ~3 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 mossy_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~8 ~6 spruce_planks []
setblock ~-4 ~9 ~6 campfire []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 spruce_fence []
fill ~0 ~6 ~-6 ~2 ~6 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~5 blast_furnace []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 4 rabbit_hide 11
replaceitem block ~3 ~1 ~5 slot.container 5 leather 12
replaceitem block ~3 ~1 ~5 slot.container 9 spruce_log 16
replaceitem block ~3 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~3 ~1 ~5 slot.container 11 coal 14
replaceitem block ~3 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~3 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 14 campfire 7
loot insert ~3 ~1 ~5 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
