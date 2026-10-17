# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0122/4224 | 主题内编号: b122/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·十字穹顶宏伟圣堂与墓窟 (plains_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_stone_bricks []
setblock ~0 ~-7 ~0 bookshelf []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 1 spider_eye 6
replaceitem block ~0 ~-4 ~-4 slot.container 2 leather 9
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-4 ~-4 slot.container 10 coal 12
replaceitem block ~0 ~-4 ~-4 slot.container 11 oak_log 17
replaceitem block ~0 ~-4 ~-4 slot.container 12 apple 8
replaceitem block ~0 ~-4 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-4 ~-4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~-4 loot "rsf/plains"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 hay_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-2 ~9 ~8 ~-2 stripped_oak_log []
fill ~9 ~7 ~-4 ~9 ~7 ~0 cobblestone_wall []
fill ~9 ~5 ~-2 ~9 ~9 ~-2 cobblestone_wall []
setblock ~9 ~9 ~-2 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 12 torch 22
replaceitem block ~-6 ~1 ~4 slot.container 13 bread 8
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_beef 7
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0
