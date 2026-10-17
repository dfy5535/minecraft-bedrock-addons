# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3613/4224 | 主题内编号: b029/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·奥术星象琉璃塔 (crimson_forest_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 crimson_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 crimson_planks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 crimson_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 shroomlight []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 ghast_tear 5
replaceitem block ~3 ~-2 ~0 slot.container 1 string 13
replaceitem block ~3 ~-2 ~0 slot.container 2 ender_pearl 8
replaceitem block ~3 ~-2 ~0 slot.container 3 leather 17
replaceitem block ~3 ~-2 ~0 slot.container 4 cooked_porkchop 16
replaceitem block ~3 ~-2 ~0 slot.container 5 gold_ingot 17
replaceitem block ~3 ~-2 ~0 slot.container 9 obsidian 14
replaceitem block ~3 ~-2 ~0 slot.container 10 netherite_scrap 1
replaceitem block ~3 ~-2 ~0 slot.container 11 golden_helmet 1
replaceitem block ~3 ~-2 ~0 slot.container 12 crossbow 1
replaceitem block ~3 ~-2 ~0 slot.container 13 arrow 27
replaceitem block ~3 ~-2 ~0 slot.container 14 golden_apple 6
loot insert ~3 ~-2 ~0 loot "rsf/crimson_forest"
loot insert ~3 ~-2 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~11 ~4 crimson_planks []
fill ~-4 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 polished_blackstone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~11 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_bricks []
fill ~-4 ~12 ~-3 ~4 ~13 ~3 glass []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 crimson_stem []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 crimson_stem []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 crimson_stem []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 crimson_stem []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 gilded_blackstone []
setblock ~8 ~9 ~-6 gold_block []
setblock ~8 ~10 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ghast_tear 8
replaceitem block ~4 ~1 ~2 slot.container 1 string 16
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 11
replaceitem block ~4 ~1 ~2 slot.container 3 leather 12
replaceitem block ~4 ~1 ~2 slot.container 4 cooked_porkchop 11
replaceitem block ~4 ~1 ~2 slot.container 5 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 9 arrow 25
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~2 slot.container 11 golden_carrot 11
replaceitem block ~4 ~1 ~2 slot.container 12 crimson_stem 20
replaceitem block ~4 ~1 ~2 slot.container 13 shroomlight 11
replaceitem block ~4 ~1 ~2 slot.container 14 crying_obsidian 12
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-4 ~1 ~3 slot.container 1 leather 15
replaceitem block ~-4 ~1 ~3 slot.container 2 cooked_porkchop 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gold_ingot 15
replaceitem block ~-4 ~1 ~3 slot.container 4 blaze_rod 10
replaceitem block ~-4 ~1 ~3 slot.container 5 magma_cream 13
replaceitem block ~-4 ~1 ~3 slot.container 9 arrow 30
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_carrot 9
replaceitem block ~-4 ~1 ~3 slot.container 12 crimson_stem 18
replaceitem block ~-4 ~1 ~3 slot.container 13 shroomlight 9
replaceitem block ~-4 ~1 ~3 slot.container 14 crying_obsidian 10
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
