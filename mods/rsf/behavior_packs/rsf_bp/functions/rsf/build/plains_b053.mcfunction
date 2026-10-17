# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0053/4224 | 主题内编号: b053/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·测绘师观景制图站 (plains_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 14
replaceitem block ~4 ~-3 ~4 slot.container 1 gunpowder 13
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 5 leather 9
replaceitem block ~4 ~-3 ~4 slot.container 9 apple 11
replaceitem block ~4 ~-3 ~4 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-3 ~4 slot.container 12 shield 1
replaceitem block ~4 ~-3 ~4 slot.container 13 torch 18
replaceitem block ~4 ~-3 ~4 slot.container 14 bread 11
loot insert ~4 ~-3 ~4 loot "rsf/plains"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 cobblestone []
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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~0 ~0 ~7 ~9 ~0 oak_log []
fill ~7 ~8 ~-2 ~7 ~8 ~2 oak_fence []
fill ~7 ~6 ~0 ~7 ~10 ~0 oak_fence []
setblock ~7 ~10 ~0 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 leather 12
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 8
replaceitem block ~4 ~1 ~2 slot.container 9 torch 20
replaceitem block ~4 ~1 ~2 slot.container 10 bread 13
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_beef 12
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 5
replaceitem block ~4 ~1 ~2 slot.container 13 coal 13
replaceitem block ~4 ~1 ~2 slot.container 14 oak_log 18
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 torch 18
replaceitem block ~-4 ~1 ~3 slot.container 10 bread 11
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_beef 10
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 13 coal 18
replaceitem block ~-4 ~1 ~3 slot.container 14 oak_log 16
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
