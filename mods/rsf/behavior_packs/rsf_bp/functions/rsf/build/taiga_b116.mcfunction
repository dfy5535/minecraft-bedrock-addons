# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0756/4224 | 主题内编号: b116/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·U型围合秘密花园驿站 (taiga_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 spruce_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 spruce_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~3 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-4 ~4 slot.container 9 lantern 4
replaceitem block ~3 ~-4 ~4 slot.container 10 sweet_berries 13
replaceitem block ~3 ~-4 ~4 slot.container 11 cooked_rabbit 8
replaceitem block ~3 ~-4 ~4 slot.container 12 cooked_salmon 9
replaceitem block ~3 ~-4 ~4 slot.container 13 spruce_log 20
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_ingot 11
loot insert ~3 ~-4 ~4 loot "rsf/taiga"
loot insert ~3 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 spruce_planks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 mossy_cobblestone []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 glass []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mossy_cobblestone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~1 ~0 ~-8 ~3 ~0 ~-9 mossy_cobblestone []
setblock ~2 ~1 ~-9 campfire []
fill ~1 ~1 ~-8 ~1 ~5 ~-8 spruce_fence []
fill ~3 ~1 ~-8 ~3 ~5 ~-8 spruce_fence []
fill ~1 ~6 ~-8 ~3 ~6 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~5 slot.container 9 campfire 2
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 11 sweet_berries 14
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_rabbit 9
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~-4 ~1 ~5 slot.container 14 spruce_log 21
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 7
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 campfire 7
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 11 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_rabbit 7
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 14 spruce_log 19
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
