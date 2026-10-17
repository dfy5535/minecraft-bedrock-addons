# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0061/4224 | 主题内编号: b061/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子封土古墓地宫 (plains_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 hay_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 13
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 torch 17
replaceitem block ~0 ~-3 ~-2 slot.container 10 bread 10
replaceitem block ~0 ~-3 ~-2 slot.container 11 cooked_beef 9
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 coal 17
replaceitem block ~0 ~-3 ~-2 slot.container 14 oak_log 22
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~7 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_bricks []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~0 ~9 ~7 ~0 oak_log []
fill ~9 ~6 ~-2 ~9 ~6 ~2 oak_fence []
fill ~9 ~4 ~0 ~9 ~8 ~0 oak_fence []
setblock ~9 ~8 ~0 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~2 slot.container 1 leather 12
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 4 bone 9
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 8
replaceitem block ~6 ~1 ~2 slot.container 9 coal 17
replaceitem block ~6 ~1 ~2 slot.container 10 oak_log 22
replaceitem block ~6 ~1 ~2 slot.container 11 apple 6
replaceitem block ~6 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~6 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~6 ~1 ~2 slot.container 14 shield 1
loot insert ~6 ~1 ~2 loot "rsf/plains"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~3 slot.container 4 string 14
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 9 coal 15
replaceitem block ~-6 ~1 ~3 slot.container 10 oak_log 20
replaceitem block ~-6 ~1 ~3 slot.container 11 apple 11
replaceitem block ~-6 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-6 ~1 ~3 slot.container 14 shield 1
loot insert ~-6 ~1 ~3 loot "rsf/plains"
loot insert ~-6 ~1 ~3 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
