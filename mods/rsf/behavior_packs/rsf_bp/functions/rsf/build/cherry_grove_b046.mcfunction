# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1838/4224 | 主题内编号: b046/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·要塞校场比武演武台 (cherry_grove_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cherry_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 string 15
replaceitem block ~5 ~-3 ~4 slot.container 1 gunpowder 6
replaceitem block ~5 ~-3 ~4 slot.container 2 arrow 17
replaceitem block ~5 ~-3 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~-3 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~5 ~-3 ~4 slot.container 5 feather 12
replaceitem block ~5 ~-3 ~4 slot.container 9 bow 1
replaceitem block ~5 ~-3 ~4 slot.container 10 lantern 5
replaceitem block ~5 ~-3 ~4 slot.container 11 cherry_log 18
replaceitem block ~5 ~-3 ~4 slot.container 12 cherry_sapling 7
replaceitem block ~5 ~-3 ~4 slot.container 13 honey_bottle 8
replaceitem block ~5 ~-3 ~4 slot.container 14 honeycomb 11
loot insert ~5 ~-3 ~4 loot "rsf/cherry_grove"
loot insert ~5 ~-3 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 cherry_planks []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 polished_deepslate []
setblock ~-7 ~8 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 polished_deepslate []
setblock ~-7 ~8 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 polished_deepslate []
setblock ~6 ~8 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~7 ~6 polished_deepslate []
setblock ~6 ~8 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 polished_deepslate []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cherry_fence []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 cherry_log []
setblock ~-7 ~7 ~-6 soul_lantern []
setblock ~-7 ~6 ~6 cherry_log []
setblock ~-7 ~7 ~6 soul_lantern []
setblock ~7 ~6 ~-6 cherry_log []
setblock ~7 ~7 ~-6 soul_lantern []
setblock ~7 ~6 ~6 cherry_log []
setblock ~7 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~7 ~2 cherry_planks []
fill ~8 ~1 ~-1 ~9 ~6 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~8 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-2 ~0 ~-9 ~-2 ~5 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~5 ~-9 cherry_log []
fill ~-3 ~5 ~-9 ~3 ~5 ~-9 cherry_slab []
fill ~-2 ~4 ~-9 ~2 ~4 ~-9 stripped_cherry_log []
setblock ~-3 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 1 feather 15
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 8
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 4 string 10
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~-6 ~1 ~4 slot.container 12 amethyst_shard 6
replaceitem block ~-6 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 6
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-3 ~0
