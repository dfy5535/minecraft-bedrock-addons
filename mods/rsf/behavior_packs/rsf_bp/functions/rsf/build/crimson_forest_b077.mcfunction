# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3661/4224 | 主题内编号: b077/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子鸟居图腾神道 (crimson_forest_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace fire
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 crimson_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 crimson_planks [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 crimson_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 red_nether_brick []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 crimson_planks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-5 ~7 ~8 ~5 crimson_slab []
fill ~-5 ~9 ~-3 ~5 ~10 ~3 polished_blackstone_bricks []
fill ~-6 ~11 ~-4 ~6 ~11 ~4 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 shroomlight []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 gilded_blackstone []
setblock ~9 ~7 ~-6 gold_block []
setblock ~9 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~2 slot.container 1 string 16
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~2 slot.container 3 leather 12
replaceitem block ~5 ~1 ~2 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~2 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 9 shroomlight 6
replaceitem block ~5 ~1 ~2 slot.container 10 crying_obsidian 7
replaceitem block ~5 ~1 ~2 slot.container 11 obsidian 10
replaceitem block ~5 ~1 ~2 slot.container 12 netherite_scrap 4
replaceitem block ~5 ~1 ~2 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~2 slot.container 14 crossbow 1
loot insert ~5 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~3 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~3 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~3 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~3 slot.container 9 shroomlight 11
replaceitem block ~-5 ~1 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~-5 ~1 ~3 slot.container 11 obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 12 netherite_scrap 2
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
