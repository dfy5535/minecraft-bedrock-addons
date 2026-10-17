# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0038/4224 | 主题内编号: b038/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·四方凯旋衣冠冢 (plains_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 13
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 bread 14
replaceitem block ~0 ~-3 ~-2 slot.container 10 cooked_beef 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 12 coal 14
replaceitem block ~0 ~-3 ~-2 slot.container 13 oak_log 19
replaceitem block ~0 ~-3 ~-2 slot.container 14 apple 10
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-3 ~1 ~7 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 oak_fence []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 oak_log []
setblock ~-7 ~8 ~-6 torch []
setblock ~-7 ~7 ~6 oak_log []
setblock ~-7 ~8 ~6 torch []
setblock ~7 ~7 ~-6 oak_log []
setblock ~7 ~8 ~-6 torch []
setblock ~7 ~7 ~6 oak_log []
setblock ~7 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 mossy_stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 oak_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~0 ~1 ~7 ~9 ~1 stripped_oak_log []
fill ~7 ~8 ~-1 ~7 ~8 ~3 cobblestone_wall []
fill ~7 ~6 ~1 ~7 ~10 ~1 cobblestone_wall []
setblock ~7 ~10 ~1 lantern []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 hay_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 oak_log 19
replaceitem block ~-4 ~1 ~2 slot.container 10 apple 10
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 torch 17
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
