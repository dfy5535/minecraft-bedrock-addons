# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0003/4224 | 主题内编号: b003/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·环柱巨石方尖祭坛 (plains_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cobblestone []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 spider_eye 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 leather 9
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 bone 14
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 13
replaceitem block ~0 ~-2 ~-3 slot.container 9 apple 12
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 shield 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 torch 19
replaceitem block ~0 ~-2 ~-3 slot.container 14 bread 12
loot insert ~0 ~-2 ~-3 loot "rsf/plains"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~8 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~8 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 oak_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 bookshelf []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~1 ~8 ~9 ~1 oak_log []
fill ~8 ~8 ~-1 ~8 ~8 ~3 oak_fence []
fill ~8 ~6 ~1 ~8 ~10 ~1 oak_fence []
setblock ~8 ~10 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 torch 19
replaceitem block ~5 ~1 ~3 slot.container 10 bread 12
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_beef 11
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 coal 12
replaceitem block ~5 ~1 ~3 slot.container 14 oak_log 17
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 10
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_beef 9
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 14 oak_log 22
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
