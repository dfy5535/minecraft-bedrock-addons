# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3648/4224 | 主题内编号: b064/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·U型冥庭守墓人陵园 (crimson_forest_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 crimson_planks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 crimson_planks []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gold_ingot 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 blaze_rod 4
replaceitem block ~0 ~-4 ~-3 slot.container 2 magma_cream 7
replaceitem block ~0 ~-4 ~-3 slot.container 3 ghast_tear 5
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 6
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_carrot 13
replaceitem block ~0 ~-4 ~-3 slot.container 11 crimson_stem 22
replaceitem block ~0 ~-4 ~-3 slot.container 12 shroomlight 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 crying_obsidian 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 obsidian 10
loot insert ~0 ~-4 ~-3 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 red_nether_brick []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 blackstone_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 blackstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 blackstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 crimson_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~-6 ~9 ~8 ~-6 gilded_blackstone []
setblock ~9 ~9 ~-6 gold_block []
setblock ~9 ~10 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 4 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 9 crying_obsidian 7
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 10
replaceitem block ~-5 ~1 ~3 slot.container 11 netherite_scrap 4
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 arrow 30
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
