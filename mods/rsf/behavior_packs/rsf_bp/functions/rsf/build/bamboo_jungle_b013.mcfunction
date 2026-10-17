# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1037/4224 | 主题内编号: b013/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·地底熔炉苦工地牢 (bamboo_jungle_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bamboo_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 bamboo_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 bamboo_planks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~4 ~-3 ~4 slot.container 2 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 4 slime_ball 8
replaceitem block ~4 ~-3 ~4 slot.container 5 arrow 19
replaceitem block ~4 ~-3 ~4 slot.container 9 golden_apple 1
replaceitem block ~4 ~-3 ~4 slot.container 10 bow 1
replaceitem block ~4 ~-3 ~4 slot.container 11 lantern 6
replaceitem block ~4 ~-3 ~4 slot.container 12 bamboo 35
replaceitem block ~4 ~-3 ~4 slot.container 13 scaffolding 20
replaceitem block ~4 ~-3 ~4 slot.container 14 melon_slice 17
loot insert ~4 ~-3 ~4 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 bamboo_planks []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 bamboo_block []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 bamboo_block []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 bamboo_block []
fill ~6 ~1 ~6 ~6 ~5 ~6 bamboo_block []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 bamboo_fence []
setblock ~6 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 bamboo_mosaic []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 bamboo_fence []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 bamboo_block []
setblock ~-6 ~7 ~-6 lantern []
setblock ~-6 ~6 ~6 bamboo_block []
setblock ~-6 ~7 ~6 lantern []
setblock ~6 ~6 ~-6 bamboo_block []
setblock ~6 ~7 ~-6 lantern []
setblock ~6 ~6 ~6 bamboo_block []
setblock ~6 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 string 12
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 5 bone 12
replaceitem block ~5 ~1 ~4 slot.container 9 scaffolding 17
replaceitem block ~5 ~1 ~4 slot.container 10 melon_slice 14
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_chicken 11
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 1 string 15
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 9 scaffolding 22
replaceitem block ~-5 ~1 ~5 slot.container 10 melon_slice 12
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_chicken 9
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~5 slot.container 14 gold_ingot 8
loot insert ~-5 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~5 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
