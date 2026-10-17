# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0044/4224 | 主题内编号: b044/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子祭台勇士角斗场 (plains_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~10 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~10 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~10 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~10 ~7 air [] replace log2
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mossy_cobblestone []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 cobblestone []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~3 slot.container 1 bone 14
replaceitem block ~5 ~-3 ~3 slot.container 2 gunpowder 13
replaceitem block ~5 ~-3 ~3 slot.container 3 string 8
replaceitem block ~5 ~-3 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~3 slot.container 5 spider_eye 6
replaceitem block ~5 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~5 ~-3 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~5 ~-3 ~3 slot.container 12 torch 17
replaceitem block ~5 ~-3 ~3 slot.container 13 bread 10
replaceitem block ~5 ~-3 ~3 slot.container 14 cooked_beef 9
loot insert ~5 ~-3 ~3 loot "rsf/plains"
loot insert ~5 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~7 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~7 ~7 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~6 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cracked_stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-5 ~-7 ~8 ~-5 stone_bricks []
setblock ~-7 ~9 ~-5 campfire []
fill ~-7 ~6 ~5 ~-7 ~8 ~5 stone_bricks []
setblock ~-7 ~9 ~5 campfire []
fill ~7 ~6 ~-5 ~7 ~8 ~-5 stone_bricks []
setblock ~7 ~9 ~-5 campfire []
fill ~7 ~6 ~5 ~7 ~8 ~5 stone_bricks []
setblock ~7 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 stone_bricks []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 stone_bricks []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 stone_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~9 ~0 ~2 ~9 ~5 ~2 stone_bricks []
fill ~9 ~4 ~0 ~9 ~4 ~4 cobblestone_wall []
fill ~9 ~2 ~2 ~9 ~6 ~2 cobblestone_wall []
setblock ~9 ~6 ~2 campfire []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-6 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 10 coal 15
replaceitem block ~-6 ~1 ~3 slot.container 11 oak_log 20
replaceitem block ~-6 ~1 ~3 slot.container 12 apple 11
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-6 ~1 ~3 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
