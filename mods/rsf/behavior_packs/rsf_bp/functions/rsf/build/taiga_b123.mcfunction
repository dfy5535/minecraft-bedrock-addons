# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0763/4224 | 主题内编号: b123/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·四角塔楼领主城堡复合体 (taiga_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 rabbit_hide 8
replaceitem block ~4 ~-4 ~5 slot.container 1 leather 9
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 bone 15
replaceitem block ~4 ~-4 ~5 slot.container 4 arrow 22
replaceitem block ~4 ~-4 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-4 ~5 slot.container 9 cooked_rabbit 8
replaceitem block ~4 ~-4 ~5 slot.container 10 cooked_salmon 9
replaceitem block ~4 ~-4 ~5 slot.container 11 spruce_log 20
replaceitem block ~4 ~-4 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-4 ~5 slot.container 13 coal 18
replaceitem block ~4 ~-4 ~5 slot.container 14 emerald 3
loot insert ~4 ~-4 ~5 loot "rsf/taiga"
loot insert ~4 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 mossy_stone_bricks []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 mossy_stone_bricks []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 mossy_stone_bricks []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 mossy_stone_bricks []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mossy_stone_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 spruce_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~7 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~7 ~-7 spruce_fence []
fill ~-1 ~8 ~-7 ~1 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 iron_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 10 sweet_berries 13
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_rabbit 8
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_salmon 9
replaceitem block ~5 ~1 ~6 slot.container 13 spruce_log 20
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
