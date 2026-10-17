# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0185/4224 | 主题内编号: b057/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·中央石棺帝王地下陵寝 (forest_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 oak_planks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 oak_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 oak_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 stone_bricks []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_cobblestone []
setblock ~0 ~-7 ~0 bookshelf []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 spider_eye 5
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 18
replaceitem block ~0 ~-4 ~-5 slot.container 3 slime_ball 7
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 sweet_berries 16
replaceitem block ~0 ~-4 ~-5 slot.container 10 cooked_porkchop 6
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 oak_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 13 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 5
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 oak_planks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-7 ~0 ~2 ~7 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mossy_cobblestone []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 honeycomb_block []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x10x6) ---
fill ~-8 ~0 ~-10 ~-8 ~8 ~-10 stripped_oak_log []
fill ~8 ~0 ~-10 ~8 ~8 ~-10 stripped_oak_log []
fill ~-8 ~8 ~-10 ~8 ~8 ~-10 moss_block []
setblock ~1 ~9 ~-10 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 12
replaceitem block ~4 ~1 ~6 slot.container 2 spider_eye 8
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 5 slime_ball 10
replaceitem block ~4 ~1 ~6 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~6 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~6 slot.container 12 bow 1
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 14 honey_bottle 5
loot insert ~4 ~1 ~6 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
