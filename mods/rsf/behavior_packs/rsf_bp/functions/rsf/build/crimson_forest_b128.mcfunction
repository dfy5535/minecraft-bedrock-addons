# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3712/4224 | 主题内编号: b128/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·U型紫禁朝堂大殿与地底金库 (crimson_forest_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 magma_cream 7
replaceitem block ~5 ~-4 ~4 slot.container 1 ghast_tear 5
replaceitem block ~5 ~-4 ~4 slot.container 2 string 13
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 8
replaceitem block ~5 ~-4 ~4 slot.container 4 leather 17
replaceitem block ~5 ~-4 ~4 slot.container 5 cooked_porkchop 16
replaceitem block ~5 ~-4 ~4 slot.container 9 crimson_stem 17
replaceitem block ~5 ~-4 ~4 slot.container 10 shroomlight 8
replaceitem block ~5 ~-4 ~4 slot.container 11 crying_obsidian 9
replaceitem block ~5 ~-4 ~4 slot.container 12 obsidian 12
replaceitem block ~5 ~-4 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~5 ~-4 ~4 slot.container 14 golden_helmet 1
loot insert ~5 ~-4 ~4 loot "rsf/crimson_forest"
loot insert ~5 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 blackstone []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 red_nether_brick []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~9 ~-7 ~8 ~9 ~7 blackstone_slab []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 crimson_planks []
fill ~-7 ~12 ~-6 ~7 ~12 ~6 crimson_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 crimson_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~10 ~0 ~-8 ~10 ~7 ~-8 gilded_blackstone []
setblock ~10 ~8 ~-8 gold_block []
setblock ~10 ~9 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 1 cooked_porkchop 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 4 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 5 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_helmet 1
replaceitem block ~-6 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 arrow 29
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_carrot 8
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
