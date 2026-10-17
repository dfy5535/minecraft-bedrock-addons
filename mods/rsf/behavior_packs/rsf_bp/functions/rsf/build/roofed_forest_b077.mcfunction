# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0461/4224 | 主题内编号: b077/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子鸟居图腾神道 (roofed_forest_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 dark_oak_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 dark_oak_planks []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 dark_oak_slab []
setblock ~0 ~11 ~0 red_mushroom_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cracked_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-6 ~0 ~-1 ~-7 ~4 ~1 iron_bars []
fill ~-6 ~5 ~-1 ~-7 ~5 ~1 dark_oak_slab []
setblock ~-7 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 red_mushroom_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 15
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~4 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 5 bone 12
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 10 diamond 2
replaceitem block ~4 ~1 ~4 slot.container 11 experience_bottle 5
replaceitem block ~4 ~1 ~4 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~4 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 14 arrow 28
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0
