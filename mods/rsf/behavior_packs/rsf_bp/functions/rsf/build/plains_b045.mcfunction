# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0045/4224 | 主题内编号: b045/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·十二柱神殿试炼场 (plains_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-5 ~-4 ~-4 torch []
setblock ~5 ~-4 ~4 torch []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-2 ~4 slot.container 1 leather 9
replaceitem block ~0 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 4 bone 14
replaceitem block ~0 ~-2 ~4 slot.container 5 gunpowder 13
replaceitem block ~0 ~-2 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-2 ~4 slot.container 10 shield 1
replaceitem block ~0 ~-2 ~4 slot.container 11 torch 18
replaceitem block ~0 ~-2 ~4 slot.container 12 bread 11
replaceitem block ~0 ~-2 ~4 slot.container 13 cooked_beef 10
replaceitem block ~0 ~-2 ~4 slot.container 14 iron_ingot 10
loot insert ~0 ~-2 ~4 loot "rsf/plains"
loot insert ~0 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 oak_log []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 oak_log []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 oak_log []
fill ~7 ~1 ~6 ~7 ~6 ~6 oak_log []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 oak_log []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 oak_log []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 oak_log []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 oak_log []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 oak_log []
fill ~7 ~1 ~0 ~7 ~6 ~0 oak_log []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 oak_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 oak_log []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 oak_log []
fill ~7 ~1 ~4 ~7 ~6 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 oak_log []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 oak_log []
setblock ~-7 ~10 ~6 torch []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 oak_log []
setblock ~7 ~10 ~-6 torch []
fill ~7 ~7 ~6 ~7 ~9 ~6 oak_log []
setblock ~7 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~-1 ~9 ~6 ~-1 oak_log []
fill ~9 ~5 ~-3 ~9 ~5 ~1 oak_fence []
fill ~9 ~3 ~-1 ~9 ~7 ~-1 oak_fence []
setblock ~9 ~7 ~-1 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 leather 12
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 9
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 8
replaceitem block ~6 ~1 ~4 slot.container 9 apple 9
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 12 shield 1
replaceitem block ~6 ~1 ~4 slot.container 13 torch 16
replaceitem block ~6 ~1 ~4 slot.container 14 bread 9
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 9 apple 7
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 13 torch 21
replaceitem block ~-6 ~1 ~5 slot.container 14 bread 14
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
