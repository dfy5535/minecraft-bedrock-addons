# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1144/4224 | 主题内编号: b120/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·引水渠跨桥水培温室 (bamboo_jungle_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 jungle_planks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 jungle_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 bamboo_planks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~-4 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~-4 ~-3 ~2 slot.container 3 slime_ball 8
replaceitem block ~-4 ~-3 ~2 slot.container 4 arrow 19
replaceitem block ~-4 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-3 ~2 slot.container 9 bow 1
replaceitem block ~-4 ~-3 ~2 slot.container 10 lantern 9
replaceitem block ~-4 ~-3 ~2 slot.container 11 bamboo 38
replaceitem block ~-4 ~-3 ~2 slot.container 12 scaffolding 16
replaceitem block ~-4 ~-3 ~2 slot.container 13 melon_slice 13
replaceitem block ~-4 ~-3 ~2 slot.container 14 cooked_chicken 10
loot insert ~-4 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~-4 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 jungle_planks []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-4 ~6 ~5 ~4 bamboo_planks []
fill ~-5 ~6 ~-3 ~5 ~7 ~3 glass []
fill ~-4 ~6 ~-2 ~4 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 string 12
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 9 melon_slice 15
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_chicken 12
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 12 emerald 10
replaceitem block ~-5 ~1 ~2 slot.container 13 gold_ingot 4
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
