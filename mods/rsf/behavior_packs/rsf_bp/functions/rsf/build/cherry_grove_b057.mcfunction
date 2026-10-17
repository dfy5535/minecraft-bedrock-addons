# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1849/4224 | 主题内编号: b057/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·中央石棺帝王地下陵寝 (cherry_grove_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 cherry_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cherry_planks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cherry_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 3 phantom_membrane 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 feather 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 honeycomb 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 emerald 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 amethyst_shard 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 bow 1
loot insert ~0 ~-3 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 calcite []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 cherry_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 cherry_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 cherry_planks []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 cherry_planks []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 amethyst_block []
setblock ~0 ~8 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 cherry_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 cherry_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 cherry_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 cherry_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~-3 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 9
replaceitem block ~5 ~1 ~4 slot.container 1 string 10
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 7
replaceitem block ~5 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 9 amethyst_shard 7
replaceitem block ~5 ~1 ~4 slot.container 10 bow 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 12 cherry_log 20
replaceitem block ~5 ~1 ~4 slot.container 13 cherry_sapling 9
replaceitem block ~5 ~1 ~4 slot.container 14 honey_bottle 10
loot insert ~5 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 2
replaceitem block ~-5 ~1 ~5 slot.container 3 phantom_membrane 3
replaceitem block ~-5 ~1 ~5 slot.container 4 feather 10
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 9 amethyst_shard 12
replaceitem block ~-5 ~1 ~5 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~5 slot.container 11 lantern 5
replaceitem block ~-5 ~1 ~5 slot.container 12 cherry_log 18
replaceitem block ~-5 ~1 ~5 slot.container 13 cherry_sapling 7
replaceitem block ~-5 ~1 ~5 slot.container 14 honey_bottle 8
loot insert ~-5 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~5 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
