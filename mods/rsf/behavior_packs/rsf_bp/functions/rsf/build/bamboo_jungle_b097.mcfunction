# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1121/4224 | 主题内编号: b097/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·八角射击孔防御棱堡 (bamboo_jungle_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 19
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 3 string 17
replaceitem block ~4 ~-2 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 10 bow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 lantern 10
replaceitem block ~4 ~-2 ~3 slot.container 12 bamboo 32
replaceitem block ~4 ~-2 ~3 slot.container 13 scaffolding 17
replaceitem block ~4 ~-2 ~3 slot.container 14 melon_slice 14
loot insert ~4 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 bamboo_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 bamboo_block []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 bamboo_block []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 bamboo_block []
fill ~5 ~1 ~4 ~5 ~6 ~4 bamboo_block []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 bamboo_mosaic []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 bamboo_block []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 bamboo_block []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 bamboo_block []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 bamboo_block []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 bamboo_block []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 bamboo_block []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 bamboo_block []
fill ~7 ~0 ~2 ~7 ~5 ~2 bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~1 ~-2 ~7 ~5 ~2 scaffolding []
fill ~6 ~5 ~-2 ~8 ~5 ~2 bamboo_mosaic_slab []
setblock ~7 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_chicken 9
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 14 bow 1
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 string 15
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_chicken 14
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 bow 1
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
