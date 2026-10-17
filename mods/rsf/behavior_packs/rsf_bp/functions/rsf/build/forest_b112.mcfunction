# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0240/4224 | 主题内编号: b112/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·U型回廊学者修道院 (forest_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 7
replaceitem block ~3 ~-2 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~-2 ~4 slot.container 2 slime_ball 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 oak_log 21
replaceitem block ~3 ~-2 ~4 slot.container 10 emerald 9
replaceitem block ~3 ~-2 ~4 slot.container 11 golden_apple 1
replaceitem block ~3 ~-2 ~4 slot.container 12 iron_axe 1
replaceitem block ~3 ~-2 ~4 slot.container 13 bow 1
replaceitem block ~3 ~-2 ~4 slot.container 14 lantern 7
loot insert ~3 ~-2 ~4 loot "rsf/forest"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 oak_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 string 12
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 9 honey_bottle 6
replaceitem block ~-4 ~1 ~5 slot.container 10 sweet_berries 13
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_porkchop 10
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 13 oak_log 22
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 3
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 honey_bottle 4
replaceitem block ~4 ~1 ~5 slot.container 10 sweet_berries 11
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_porkchop 8
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 13 oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 8
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
