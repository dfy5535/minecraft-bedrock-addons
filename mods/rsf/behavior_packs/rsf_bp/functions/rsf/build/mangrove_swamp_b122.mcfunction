# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1786/4224 | 主题内编号: b122/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字穹顶宏伟圣堂与墓窟 (mangrove_swamp_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 packed_mud [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 packed_mud [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mud_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 spider_eye 7
replaceitem block ~0 ~-3 ~-5 slot.container 1 gunpowder 8
replaceitem block ~0 ~-3 ~-5 slot.container 2 prismarine_shard 7
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 slime_ball 19
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 gold_ingot 8
replaceitem block ~0 ~-3 ~-5 slot.container 10 emerald 8
replaceitem block ~0 ~-3 ~-5 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~-5 slot.container 12 golden_apple 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 boat 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 lantern 6
loot insert ~0 ~-3 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 packed_mud []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 packed_mud []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 mangrove_fence []
setblock ~6 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mud_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 packed_mud []
fill ~0 ~16 ~0 ~0 ~18 ~0 sea_lantern []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~9 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~-2 ~0 ~-9 ~4 ~0 mangrove_roots []
fill ~9 ~-2 ~0 ~9 ~4 ~0 mangrove_roots []
fill ~-9 ~5 ~0 ~9 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 prismarine_shard 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 11 mangrove_log 19
replaceitem block ~-5 ~1 ~6 slot.container 12 mud_bricks 20
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_salmon 13
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 2 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 17
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 boat 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 11 mangrove_log 17
replaceitem block ~5 ~1 ~6 slot.container 12 mud_bricks 18
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_salmon 11
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
