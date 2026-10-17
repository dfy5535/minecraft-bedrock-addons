# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1036/4224 | 主题内编号: b012/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子暗门地底宝库 (bamboo_jungle_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 jungle_planks [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 jungle_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 bamboo_planks []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 string 17
replaceitem block ~5 ~-4 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-4 ~2 slot.container 2 bone 17
replaceitem block ~5 ~-4 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-4 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-4 ~2 slot.container 5 slime_ball 8
replaceitem block ~5 ~-4 ~2 slot.container 9 melon_slice 15
replaceitem block ~5 ~-4 ~2 slot.container 10 cooked_chicken 12
replaceitem block ~5 ~-4 ~2 slot.container 11 iron_ingot 11
replaceitem block ~5 ~-4 ~2 slot.container 12 emerald 10
replaceitem block ~5 ~-4 ~2 slot.container 13 gold_ingot 4
replaceitem block ~5 ~-4 ~2 slot.container 14 golden_apple 2
loot insert ~5 ~-4 ~2 loot "rsf/bamboo_jungle"
loot insert ~5 ~-4 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 jungle_planks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 jungle_planks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 bamboo_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 jungle_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 jungle_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 jungle_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 jungle_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 bamboo_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 bamboo_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 bamboo_block []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bamboo_block []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 bamboo_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~1 ~-2 ~8 ~5 ~2 scaffolding []
fill ~7 ~5 ~-2 ~9 ~5 ~2 bamboo_mosaic_slab []
setblock ~8 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 12
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 5
replaceitem block ~-6 ~1 ~2 slot.container 11 bamboo 34
replaceitem block ~-6 ~1 ~2 slot.container 12 scaffolding 19
replaceitem block ~-6 ~1 ~2 slot.container 13 melon_slice 16
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_chicken 13
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
