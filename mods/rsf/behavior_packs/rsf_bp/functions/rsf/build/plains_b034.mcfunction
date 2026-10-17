# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0034/4224 | 主题内编号: b034/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子对称铭文方尖碑 (plains_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 leather 9
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-3 ~1 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~1 slot.container 3 bone 14
replaceitem block ~4 ~-3 ~1 slot.container 4 gunpowder 13
replaceitem block ~4 ~-3 ~1 slot.container 5 string 8
replaceitem block ~4 ~-3 ~1 slot.container 9 golden_apple 3
replaceitem block ~4 ~-3 ~1 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~-3 ~1 slot.container 11 shield 1
replaceitem block ~4 ~-3 ~1 slot.container 12 torch 21
replaceitem block ~4 ~-3 ~1 slot.container 13 bread 14
replaceitem block ~4 ~-3 ~1 slot.container 14 cooked_beef 6
loot insert ~4 ~-3 ~1 loot "rsf/plains"
loot insert ~4 ~-3 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~11 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_stone_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 hay_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~-1 ~8 ~5 ~-1 stripped_oak_log []
fill ~8 ~4 ~-3 ~8 ~4 ~1 cobblestone_wall []
fill ~8 ~2 ~-1 ~8 ~6 ~-1 cobblestone_wall []
setblock ~8 ~6 ~-1 lantern []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~1 slot.container 1 string 11
replaceitem block ~-5 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~1 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~1 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~1 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~1 slot.container 10 coal 12
replaceitem block ~-5 ~1 ~1 slot.container 11 oak_log 17
replaceitem block ~-5 ~1 ~1 slot.container 12 apple 8
replaceitem block ~-5 ~1 ~1 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~1 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~1 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
