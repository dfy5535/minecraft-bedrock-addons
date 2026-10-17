# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0652/4224 | 主题内编号: b012/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子暗门地底宝库 (taiga_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 22
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 3 string 8
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-3 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~4 ~-3 ~3 slot.container 9 sweet_berries 16
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_rabbit 11
replaceitem block ~4 ~-3 ~3 slot.container 11 cooked_salmon 12
replaceitem block ~4 ~-3 ~3 slot.container 12 spruce_log 16
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 7
replaceitem block ~4 ~-3 ~3 slot.container 14 coal 14
loot insert ~4 ~-3 ~3 loot "rsf/taiga"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 spruce_planks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 mossy_cobblestone []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 spruce_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-4 ~0 ~-5 ~-2 ~0 ~-6 mossy_cobblestone []
setblock ~-3 ~1 ~-6 campfire []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_fence []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_fence []
fill ~-4 ~7 ~-5 ~-2 ~7 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 campfire 5
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 13 sweet_berries 17
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_rabbit 12
loot insert ~-5 ~1 ~4 loot "rsf/taiga"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 7
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 11 campfire 3
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~5 ~1 ~4 slot.container 13 sweet_berries 15
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_rabbit 10
loot insert ~5 ~1 ~4 loot "rsf/taiga"
loot insert ~5 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
