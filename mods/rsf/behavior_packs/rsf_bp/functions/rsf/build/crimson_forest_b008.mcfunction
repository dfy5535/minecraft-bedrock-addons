# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3592/4224 | 主题内编号: b008/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·凯旋双拱圣物祭坛 (crimson_forest_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 blackstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 blackstone [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 blackstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 blackstone []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 crimson_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 crimson_fence []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 crimson_stem []
setblock ~-6 ~10 ~-4 shroomlight []
setblock ~-6 ~9 ~4 crimson_stem []
setblock ~-6 ~10 ~4 shroomlight []
setblock ~6 ~9 ~-4 crimson_stem []
setblock ~6 ~10 ~-4 shroomlight []
setblock ~6 ~9 ~4 crimson_stem []
setblock ~6 ~10 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~9 ~0 ~-6 ~9 ~7 ~-6 gilded_blackstone []
setblock ~9 ~8 ~-6 gold_block []
setblock ~9 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-5 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-5 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-5 ~1 ~2 slot.container 9 netherite_scrap 2
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_helmet 1
replaceitem block ~-5 ~1 ~2 slot.container 11 crossbow 1
replaceitem block ~-5 ~1 ~2 slot.container 12 arrow 28
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_carrot 14
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
