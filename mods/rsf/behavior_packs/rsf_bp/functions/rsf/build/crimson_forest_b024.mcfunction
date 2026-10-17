# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3608/4224 | 主题内编号: b024/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·半地下掩体储藏室 (crimson_forest_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 blackstone []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 magma_cream 7
replaceitem block ~3 ~-4 ~2 slot.container 1 ghast_tear 5
replaceitem block ~3 ~-4 ~2 slot.container 2 string 13
replaceitem block ~3 ~-4 ~2 slot.container 3 ender_pearl 8
replaceitem block ~3 ~-4 ~2 slot.container 4 leather 17
replaceitem block ~3 ~-4 ~2 slot.container 5 cooked_porkchop 16
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 4
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_carrot 11
replaceitem block ~3 ~-4 ~2 slot.container 11 crimson_stem 20
replaceitem block ~3 ~-4 ~2 slot.container 12 shroomlight 11
replaceitem block ~3 ~-4 ~2 slot.container 13 crying_obsidian 12
replaceitem block ~3 ~-4 ~2 slot.container 14 obsidian 8
loot insert ~3 ~-4 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-4 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 crimson_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 crimson_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 crimson_planks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 crimson_fence []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 crimson_stem []
setblock ~-5 ~8 ~-4 shroomlight []
setblock ~-5 ~7 ~4 crimson_stem []
setblock ~-5 ~8 ~4 shroomlight []
setblock ~5 ~7 ~-4 crimson_stem []
setblock ~5 ~8 ~-4 shroomlight []
setblock ~5 ~7 ~4 crimson_stem []
setblock ~5 ~8 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 crimson_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-7 ~8 ~8 ~-7 gilded_blackstone []
setblock ~8 ~9 ~-7 gold_block []
setblock ~8 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 9 crying_obsidian 9
replaceitem block ~-4 ~1 ~2 slot.container 10 obsidian 12
replaceitem block ~-4 ~1 ~2 slot.container 11 netherite_scrap 6
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_helmet 1
replaceitem block ~-4 ~1 ~2 slot.container 13 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 14 arrow 25
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-4 ~0
