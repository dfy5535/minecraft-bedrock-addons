# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3706/4224 | 主题内编号: b122/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字穹顶宏伟圣堂与墓窟 (crimson_forest_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~13 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~13 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 red_nether_brick []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 crimson_planks []
setblock ~0 ~-7 ~0 gilded_blackstone []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 magma_cream 7
replaceitem block ~0 ~-4 ~-4 slot.container 1 ghast_tear 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 8
replaceitem block ~0 ~-4 ~-4 slot.container 4 leather 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 cooked_porkchop 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 crying_obsidian 12
replaceitem block ~0 ~-4 ~-4 slot.container 10 obsidian 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 netherite_scrap 2
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_helmet 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 arrow 28
loot insert ~0 ~-4 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~10 ~6 polished_blackstone_bricks []
fill ~-7 ~1 ~-2 ~7 ~10 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~9 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~9 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 polished_blackstone_wall []
setblock ~7 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 crimson_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 gilded_blackstone []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 gilded_blackstone []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 gilded_blackstone []
fill ~8 ~0 ~2 ~8 ~9 ~2 gilded_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~10 ~0 ~-8 ~10 ~6 ~-8 gilded_blackstone []
setblock ~10 ~7 ~-8 gold_block []
setblock ~10 ~8 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 2 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 4 string 16
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 11
replaceitem block ~-6 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~-6 ~1 ~4 slot.container 10 arrow 28
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_carrot 14
replaceitem block ~-6 ~1 ~4 slot.container 13 crimson_stem 16
replaceitem block ~-6 ~1 ~4 slot.container 14 shroomlight 7
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
