# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0191/4224 | 主题内编号: b063/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·方尖碑镇压古墓穴 (forest_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 arrow 18
replaceitem block ~0 ~-4 ~3 slot.container 1 slime_ball 7
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 5 string 17
replaceitem block ~0 ~-4 ~3 slot.container 9 emerald 4
replaceitem block ~0 ~-4 ~3 slot.container 10 golden_apple 3
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_axe 1
replaceitem block ~0 ~-4 ~3 slot.container 12 bow 1
replaceitem block ~0 ~-4 ~3 slot.container 13 lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 14 honey_bottle 10
loot insert ~0 ~-4 ~3 loot "rsf/forest"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 arrow 16
replaceitem block ~0 ~-4 ~-3 slot.container 1 slime_ball 5
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 5 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 9 emerald 3
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_apple 2
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_axe 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 bow 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 honey_bottle 9
loot insert ~0 ~-4 ~-3 loot "rsf/forest"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~11 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~11 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~11 ~5 air []
fill ~4 ~1 ~5 ~4 ~11 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 oak_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 oak_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 oak_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 oak_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 oak_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 oak_log []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 oak_log []
fill ~-7 ~4 ~-8 ~7 ~4 ~-8 moss_block []
setblock ~-1 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 10
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 string 12
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 oak_log 19
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 13 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 14 bow 1
loot insert ~3 ~1 ~4 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
