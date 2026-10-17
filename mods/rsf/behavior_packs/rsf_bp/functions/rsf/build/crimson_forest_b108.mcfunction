# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3692/4224 | 主题内编号: b108/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字四相元素秘法殿 (crimson_forest_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 crimson_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 magma_cream 7
replaceitem block ~4 ~-3 ~0 slot.container 1 ghast_tear 5
replaceitem block ~4 ~-3 ~0 slot.container 2 string 13
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 8
replaceitem block ~4 ~-3 ~0 slot.container 4 leather 17
replaceitem block ~4 ~-3 ~0 slot.container 5 cooked_porkchop 16
replaceitem block ~4 ~-3 ~0 slot.container 9 crimson_stem 17
replaceitem block ~4 ~-3 ~0 slot.container 10 shroomlight 8
replaceitem block ~4 ~-3 ~0 slot.container 11 crying_obsidian 9
replaceitem block ~4 ~-3 ~0 slot.container 12 obsidian 12
replaceitem block ~4 ~-3 ~0 slot.container 13 netherite_scrap 6
replaceitem block ~4 ~-3 ~0 slot.container 14 golden_helmet 1
loot insert ~4 ~-3 ~0 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 blackstone []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 blackstone []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 crimson_fence []
setblock ~6 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 crimson_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 crimson_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 crimson_stem []
setblock ~0 ~4 ~-7 shroomlight []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 crimson_stem []
setblock ~0 ~4 ~7 shroomlight []
setblock ~0 ~5 ~7 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 crimson_stem []
setblock ~-8 ~4 ~0 shroomlight []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 crimson_stem []
setblock ~8 ~4 ~0 shroomlight []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~-8 ~9 ~7 ~-8 gilded_blackstone []
setblock ~9 ~8 ~-8 gold_block []
setblock ~9 ~9 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 2 string 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 5 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 11 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 12 arrow 30
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_carrot 9
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
