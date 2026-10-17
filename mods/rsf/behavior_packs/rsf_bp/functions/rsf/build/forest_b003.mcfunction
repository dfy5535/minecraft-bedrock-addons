# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0131/4224 | 主题内编号: b003/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·环柱巨石方尖祭坛 (forest_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 18
replaceitem block ~0 ~-3 ~-4 slot.container 1 slime_ball 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 honey_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 sweet_berries 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_porkchop 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 14 oak_log 22
loot insert ~0 ~-3 ~-4 loot "rsf/forest"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~9 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~9 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~9 ~6 oak_log []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 oak_log []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 oak_log []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 oak_log []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 oak_log []
fill ~5 ~1 ~0 ~5 ~9 ~0 oak_log []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 oak_log []
fill ~5 ~1 ~2 ~5 ~9 ~2 oak_log []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~9 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 oak_log []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 oak_log []
fill ~-8 ~4 ~-9 ~8 ~4 ~-9 moss_block []
setblock ~2 ~5 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 oak_log 22
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 14 bow 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
