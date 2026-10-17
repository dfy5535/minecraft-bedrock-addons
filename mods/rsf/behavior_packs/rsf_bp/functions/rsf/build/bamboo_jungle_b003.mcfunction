# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1027/4224 | 主题内编号: b003/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·环柱巨石方尖祭坛 (bamboo_jungle_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 jungle_planks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~-3 slot.container 1 arrow 19
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-2 ~-3 slot.container 5 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-2 ~-3 slot.container 10 bow 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 lantern 7
replaceitem block ~0 ~-2 ~-3 slot.container 12 bamboo 36
replaceitem block ~0 ~-2 ~-3 slot.container 13 scaffolding 21
replaceitem block ~0 ~-2 ~-3 slot.container 14 melon_slice 18
loot insert ~0 ~-2 ~-3 loot "rsf/bamboo_jungle"
loot insert ~0 ~-2 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_bamboo_block []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_bamboo_block []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_bamboo_block []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_bamboo_block []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 stripped_bamboo_block []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 stripped_bamboo_block []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 stripped_bamboo_block []
fill ~0 ~1 ~5 ~0 ~7 ~5 stripped_bamboo_block []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 stripped_bamboo_block []
fill ~2 ~1 ~5 ~2 ~7 ~5 stripped_bamboo_block []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_bamboo_block []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_bamboo_block []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_bamboo_block []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_bamboo_block []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_bamboo_block []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_bamboo_block []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_bamboo_block []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_bamboo_block []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_bamboo_block []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_bamboo_block []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_bamboo_block []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_bamboo_block []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 bamboo_mosaic []
fill ~0 ~14 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_bamboo_block []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_bamboo_block []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_bamboo_block []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_bamboo_block []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 scaffolding 21
replaceitem block ~5 ~1 ~3 slot.container 10 melon_slice 18
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_chicken 8
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 7
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 scaffolding 19
replaceitem block ~-5 ~1 ~4 slot.container 10 melon_slice 16
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_chicken 13
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 5
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
