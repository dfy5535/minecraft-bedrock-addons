# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0104/4224 | 主题内编号: b104/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双层指挥台卫戍堡 (plains_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 leather 9
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 3
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 12 torch 21
replaceitem block ~4 ~-3 ~3 slot.container 13 bread 14
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_beef 6
loot insert ~4 ~-3 ~3 loot "rsf/plains"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 stone_brick_slab []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cracked_stone_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 stone_bricks []
setblock ~-6 ~10 ~-5 campfire []
setblock ~-6 ~9 ~5 stone_bricks []
setblock ~-6 ~10 ~5 campfire []
setblock ~6 ~9 ~-5 stone_bricks []
setblock ~6 ~10 ~-5 campfire []
setblock ~6 ~9 ~5 stone_bricks []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 cracked_stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stone_bricks []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stone_bricks []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~2 ~8 ~5 ~2 stone_bricks []
fill ~8 ~4 ~0 ~8 ~4 ~4 cobblestone_wall []
fill ~8 ~2 ~2 ~8 ~6 ~2 cobblestone_wall []
setblock ~8 ~6 ~2 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 11 oak_log 17
replaceitem block ~-5 ~1 ~3 slot.container 12 apple 8
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
