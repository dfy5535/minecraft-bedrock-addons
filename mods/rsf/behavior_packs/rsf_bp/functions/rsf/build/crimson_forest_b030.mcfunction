# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3614/4224 | 主题内编号: b030/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双坡顶驻军卫戍塔 (crimson_forest_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 shroomlight []
setblock ~3 ~-5 ~-2 shroomlight []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 leather 17
replaceitem block ~3 ~-3 ~2 slot.container 1 cooked_porkchop 16
replaceitem block ~3 ~-3 ~2 slot.container 2 gold_ingot 17
replaceitem block ~3 ~-3 ~2 slot.container 3 blaze_rod 4
replaceitem block ~3 ~-3 ~2 slot.container 4 magma_cream 7
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 5
replaceitem block ~3 ~-3 ~2 slot.container 9 crying_obsidian 10
replaceitem block ~3 ~-3 ~2 slot.container 10 obsidian 13
replaceitem block ~3 ~-3 ~2 slot.container 11 netherite_scrap 7
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_helmet 1
replaceitem block ~3 ~-3 ~2 slot.container 13 crossbow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 arrow 26
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~10 ~4 polished_blackstone_bricks []
fill ~-5 ~1 ~0 ~5 ~9 ~4 red_nether_brick []
fill ~-4 ~1 ~-3 ~-1 ~9 ~3 air []
fill ~-1 ~1 ~1 ~4 ~8 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~11 ~-5 ~-6 ~11 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-5 ~6 ~11 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~12 ~-4 ~-5 ~12 ~4 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~12 ~-4 ~5 ~12 ~4 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-4 ~4 ~12 ~4 polished_blackstone_brick_slab []
fill ~0 ~13 ~-5 ~0 ~13 ~5 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~12 ~2 red_nether_brick []
fill ~6 ~1 ~-1 ~7 ~11 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~13 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-7 ~8 ~9 ~-7 gilded_blackstone []
setblock ~8 ~10 ~-7 gold_block []
setblock ~8 ~11 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 9 crimson_stem 18
replaceitem block ~-4 ~1 ~2 slot.container 10 shroomlight 9
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 10
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 13
replaceitem block ~-4 ~1 ~2 slot.container 13 netherite_scrap 7
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
