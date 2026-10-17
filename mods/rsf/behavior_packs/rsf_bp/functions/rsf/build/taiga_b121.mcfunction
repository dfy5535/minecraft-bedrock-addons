# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0761/4224 | 主题内编号: b121/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·卫城廊柱王座大殿与地宫 (taiga_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 22
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 4 string 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 9 coal 16
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 8
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 12 campfire 2
replaceitem block ~0 ~-4 ~5 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~5 slot.container 14 sweet_berries 14
loot insert ~0 ~-4 ~5 loot "rsf/taiga"
loot insert ~0 ~-4 ~5 loot "chests/village/village_taiga_house"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 13
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 20
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 9 coal 15
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 7
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 campfire 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 lantern 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 sweet_berries 13
loot insert ~0 ~-4 ~-5 loot "rsf/taiga"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~7 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 stripped_spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 stripped_spruce_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_spruce_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 stripped_spruce_log []
fill ~-6 ~7 ~-7 ~6 ~7 ~-1 spruce_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-8 ~-7 ~8 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-8 ~7 ~8 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-7 ~-6 ~9 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-7 ~6 ~9 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-7 ~5 ~9 ~7 stone_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-3 ~0 ~-8 ~-1 ~0 ~-9 mossy_cobblestone []
setblock ~-2 ~1 ~-9 campfire []
fill ~-3 ~1 ~-8 ~-3 ~5 ~-8 spruce_fence []
fill ~-1 ~1 ~-8 ~-1 ~5 ~-8 spruce_fence []
fill ~-3 ~6 ~-8 ~-1 ~6 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 iron_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 5 leather 12
replaceitem block ~5 ~1 ~6 slot.container 9 spruce_log 21
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 11 coal 12
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 campfire 5
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
