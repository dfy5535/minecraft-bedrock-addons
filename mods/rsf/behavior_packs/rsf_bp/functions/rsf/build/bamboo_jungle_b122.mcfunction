# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1146/4224 | 主题内编号: b122/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·十字穹顶宏伟圣堂与墓窟 (bamboo_jungle_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bamboo_mosaic []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 bamboo_planks []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 slime_ball 8
replaceitem block ~0 ~-4 ~-4 slot.container 2 arrow 19
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 string 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 rotten_flesh 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-4 ~-4 slot.container 10 emerald 6
replaceitem block ~0 ~-4 ~-4 slot.container 11 gold_ingot 7
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-4 ~-4 slot.container 13 bow 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 lantern 10
loot insert ~0 ~-4 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-4 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 mossy_stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 bamboo_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 scaffolding []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 jungle_log []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 jungle_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 jungle_log []
fill ~8 ~0 ~2 ~8 ~7 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~1 ~-2 ~8 ~5 ~2 scaffolding []
fill ~7 ~5 ~-2 ~9 ~5 ~2 bamboo_mosaic_slab []
setblock ~8 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~-6 ~1 ~4 slot.container 11 bamboo 32
replaceitem block ~-6 ~1 ~4 slot.container 12 scaffolding 17
replaceitem block ~-6 ~1 ~4 slot.container 13 melon_slice 14
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_chicken 11
loot insert ~-6 ~1 ~4 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
