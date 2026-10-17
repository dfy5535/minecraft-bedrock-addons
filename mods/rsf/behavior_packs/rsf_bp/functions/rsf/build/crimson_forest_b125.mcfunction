# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3709/4224 | 主题内编号: b125/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·巨型阶梯金字塔神王殿 (crimson_forest_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~13 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~13 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 crimson_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 crimson_planks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_nether_brick []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 shroomlight []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 ghast_tear 5
replaceitem block ~5 ~-3 ~0 slot.container 1 string 13
replaceitem block ~5 ~-3 ~0 slot.container 2 ender_pearl 8
replaceitem block ~5 ~-3 ~0 slot.container 3 leather 17
replaceitem block ~5 ~-3 ~0 slot.container 4 cooked_porkchop 16
replaceitem block ~5 ~-3 ~0 slot.container 5 gold_ingot 17
replaceitem block ~5 ~-3 ~0 slot.container 9 shroomlight 10
replaceitem block ~5 ~-3 ~0 slot.container 10 crying_obsidian 11
replaceitem block ~5 ~-3 ~0 slot.container 11 obsidian 14
replaceitem block ~5 ~-3 ~0 slot.container 12 netherite_scrap 1
replaceitem block ~5 ~-3 ~0 slot.container 13 golden_helmet 1
replaceitem block ~5 ~-3 ~0 slot.container 14 crossbow 1
loot insert ~5 ~-3 ~0 loot "rsf/crimson_forest"
loot insert ~5 ~-3 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 crimson_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 polished_blackstone_bricks []
fill ~-5 ~5 ~-4 ~5 ~10 ~4 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 crimson_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~11 ~-6 ~7 ~11 ~6 polished_blackstone_bricks []
fill ~-6 ~12 ~-5 ~6 ~12 ~5 polished_blackstone_bricks []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 shroomlight []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 crimson_stem []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 crimson_stem []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 crimson_stem []
setblock ~-9 ~4 ~0 gold_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 crimson_stem []
setblock ~9 ~4 ~0 gold_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~10 ~0 ~-8 ~10 ~9 ~-8 gilded_blackstone []
setblock ~10 ~10 ~-8 gold_block []
setblock ~10 ~11 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 1 string 16
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 11
replaceitem block ~6 ~1 ~4 slot.container 3 leather 12
replaceitem block ~6 ~1 ~4 slot.container 4 cooked_porkchop 11
replaceitem block ~6 ~1 ~4 slot.container 5 gold_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 9 golden_helmet 1
replaceitem block ~6 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~6 ~1 ~4 slot.container 11 arrow 25
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 13 golden_carrot 11
replaceitem block ~6 ~1 ~4 slot.container 14 crimson_stem 20
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 1 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 2 cooked_porkchop 14
replaceitem block ~-6 ~1 ~5 slot.container 3 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 4 blaze_rod 10
replaceitem block ~-6 ~1 ~5 slot.container 5 magma_cream 13
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_helmet 1
replaceitem block ~-6 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-6 ~1 ~5 slot.container 11 arrow 30
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_carrot 9
replaceitem block ~-6 ~1 ~5 slot.container 14 crimson_stem 18
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
