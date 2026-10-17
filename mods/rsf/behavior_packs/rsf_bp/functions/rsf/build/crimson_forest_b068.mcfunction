# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3652/4224 | 主题内编号: b068/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·断裂凯旋高架拱廊 (crimson_forest_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace fire
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blackstone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blackstone [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 blackstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~8 ~4 blackstone []
fill ~-6 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 blackstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-7 ~7 ~-1 ~-7 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x6x4) ---
fill ~10 ~0 ~-6 ~10 ~7 ~-6 gilded_blackstone []
setblock ~10 ~8 ~-6 gold_block []
setblock ~10 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-6 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-6 ~1 ~2 slot.container 2 string 16
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-6 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-6 ~1 ~2 slot.container 9 netherite_scrap 6
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_helmet 1
replaceitem block ~-6 ~1 ~2 slot.container 11 crossbow 1
replaceitem block ~-6 ~1 ~2 slot.container 12 arrow 25
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_carrot 11
loot insert ~-6 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
