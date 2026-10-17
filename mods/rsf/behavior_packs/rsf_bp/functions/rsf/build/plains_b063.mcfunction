# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0063/4224 | 主题内编号: b063/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·方尖碑镇压古墓穴 (plains_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~2 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~2 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~2 slot.container 5 gunpowder 13
replaceitem block ~0 ~-3 ~2 slot.container 9 cooked_beef 12
replaceitem block ~0 ~-3 ~2 slot.container 10 iron_ingot 5
replaceitem block ~0 ~-3 ~2 slot.container 11 coal 13
replaceitem block ~0 ~-3 ~2 slot.container 12 oak_log 18
replaceitem block ~0 ~-3 ~2 slot.container 13 apple 9
replaceitem block ~0 ~-3 ~2 slot.container 14 golden_apple 5
loot insert ~0 ~-3 ~2 loot "rsf/plains"
loot insert ~0 ~-3 ~2 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 4
replaceitem block ~0 ~-3 ~-2 slot.container 1 leather 7
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 11 coal 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 oak_log 17
replaceitem block ~0 ~-3 ~-2 slot.container 13 apple 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~10 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~10 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~10 ~4 air []
fill ~5 ~1 ~4 ~5 ~10 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 oak_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 bookshelf []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~-2 ~7 ~9 ~-2 oak_log []
fill ~7 ~8 ~-4 ~7 ~8 ~0 oak_fence []
fill ~7 ~6 ~-2 ~7 ~10 ~-2 oak_fence []
setblock ~7 ~10 ~-2 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 8
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 torch 16
replaceitem block ~4 ~1 ~2 slot.container 10 bread 9
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_beef 8
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 13 coal 16
replaceitem block ~4 ~1 ~2 slot.container 14 oak_log 21
loot insert ~4 ~1 ~2 loot "rsf/plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 5 leather 7
replaceitem block ~-4 ~1 ~3 slot.container 9 torch 21
replaceitem block ~-4 ~1 ~3 slot.container 10 bread 14
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_beef 6
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 13 coal 14
replaceitem block ~-4 ~1 ~3 slot.container 14 oak_log 19
loot insert ~-4 ~1 ~3 loot "rsf/plains"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
