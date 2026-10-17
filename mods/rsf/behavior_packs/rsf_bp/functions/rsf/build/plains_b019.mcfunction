# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0019/4224 | 主题内编号: b019/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·琉璃穹顶圣物秘室 (plains_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 string 8
replaceitem block ~3 ~-2 ~0 slot.container 1 arrow 17
replaceitem block ~3 ~-2 ~0 slot.container 2 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 3 leather 9
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 9 coal 15
replaceitem block ~3 ~-2 ~0 slot.container 10 oak_log 20
replaceitem block ~3 ~-2 ~0 slot.container 11 apple 11
replaceitem block ~3 ~-2 ~0 slot.container 12 golden_apple 7
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~-2 ~0 slot.container 14 shield 1
loot insert ~3 ~-2 ~0 loot "rsf/plains"
loot insert ~3 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 oak_log []
fill ~7 ~4 ~-4 ~7 ~4 ~0 oak_fence []
fill ~7 ~2 ~-2 ~7 ~6 ~-2 oak_fence []
setblock ~7 ~6 ~-2 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 3 leather 12
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 10 shield 1
replaceitem block ~4 ~1 ~2 slot.container 11 torch 16
replaceitem block ~4 ~1 ~2 slot.container 12 bread 9
replaceitem block ~4 ~1 ~2 slot.container 13 cooked_beef 8
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 1 leather 7
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 11 torch 21
replaceitem block ~-4 ~1 ~3 slot.container 12 bread 14
replaceitem block ~-4 ~1 ~3 slot.container 13 cooked_beef 6
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 6
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
