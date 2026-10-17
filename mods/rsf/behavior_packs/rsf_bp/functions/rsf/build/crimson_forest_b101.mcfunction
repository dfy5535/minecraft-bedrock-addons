# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3685/4224 | 主题内编号: b101/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·L型驻军兵营军械所 (crimson_forest_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 cooked_porkchop 16
replaceitem block ~4 ~-2 ~3 slot.container 1 gold_ingot 17
replaceitem block ~4 ~-2 ~3 slot.container 2 blaze_rod 4
replaceitem block ~4 ~-2 ~3 slot.container 3 magma_cream 7
replaceitem block ~4 ~-2 ~3 slot.container 4 ghast_tear 5
replaceitem block ~4 ~-2 ~3 slot.container 5 string 13
replaceitem block ~4 ~-2 ~3 slot.container 9 arrow 30
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 2
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_carrot 9
replaceitem block ~4 ~-2 ~3 slot.container 12 crimson_stem 18
replaceitem block ~4 ~-2 ~3 slot.container 13 shroomlight 9
replaceitem block ~4 ~-2 ~3 slot.container 14 crying_obsidian 10
loot insert ~4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~8 ~5 crimson_planks []
fill ~-6 ~1 ~0 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 crimson_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 crimson_stem []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 crimson_stem []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 crimson_stem []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 crimson_stem []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 polished_blackstone_bricks []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~9 ~0 ~-7 ~9 ~5 ~-7 gilded_blackstone []
setblock ~9 ~6 ~-7 gold_block []
setblock ~9 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 obsidian 11
replaceitem block ~5 ~1 ~3 slot.container 10 netherite_scrap 5
replaceitem block ~5 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~3 slot.container 13 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 9
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 3
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 29
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
