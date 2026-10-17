# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3704/4224 | 主题内编号: b120/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·引水渠跨桥水培温室 (crimson_forest_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace fire
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 blackstone [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 blackstone [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 blackstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 crimson_planks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 gold_ingot 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 blaze_rod 4
replaceitem block ~-4 ~-3 ~2 slot.container 2 magma_cream 7
replaceitem block ~-4 ~-3 ~2 slot.container 3 ghast_tear 5
replaceitem block ~-4 ~-3 ~2 slot.container 4 string 13
replaceitem block ~-4 ~-3 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-4 ~-3 ~2 slot.container 9 crossbow 1
replaceitem block ~-4 ~-3 ~2 slot.container 10 arrow 27
replaceitem block ~-4 ~-3 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~-3 ~2 slot.container 12 golden_carrot 13
replaceitem block ~-4 ~-3 ~2 slot.container 13 crimson_stem 22
replaceitem block ~-4 ~-3 ~2 slot.container 14 shroomlight 6
loot insert ~-4 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~-4 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 blackstone []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 crimson_planks []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 glass []
fill ~-4 ~8 ~-2 ~4 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~-7 ~9 ~9 ~-7 gilded_blackstone []
setblock ~9 ~10 ~-7 gold_block []
setblock ~9 ~11 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-5 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-5 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-5 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-5 ~1 ~2 slot.container 9 crimson_stem 17
replaceitem block ~-5 ~1 ~2 slot.container 10 shroomlight 8
replaceitem block ~-5 ~1 ~2 slot.container 11 crying_obsidian 9
replaceitem block ~-5 ~1 ~2 slot.container 12 obsidian 12
replaceitem block ~-5 ~1 ~2 slot.container 13 netherite_scrap 6
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
