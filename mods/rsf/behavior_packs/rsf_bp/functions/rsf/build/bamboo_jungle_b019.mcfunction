# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1043/4224 | 主题内编号: b019/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·琉璃穹顶圣物秘室 (bamboo_jungle_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 jungle_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 1 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 2 slime_ball 8
replaceitem block ~3 ~-2 ~0 slot.container 3 arrow 19
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 5 string 17
replaceitem block ~3 ~-2 ~0 slot.container 9 emerald 9
replaceitem block ~3 ~-2 ~0 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 11 golden_apple 1
replaceitem block ~3 ~-2 ~0 slot.container 12 bow 1
replaceitem block ~3 ~-2 ~0 slot.container 13 lantern 6
replaceitem block ~3 ~-2 ~0 slot.container 14 bamboo 35
loot insert ~3 ~-2 ~0 loot "rsf/bamboo_jungle"
loot insert ~3 ~-2 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 bamboo_mosaic []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 stripped_bamboo_block []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 stripped_bamboo_block []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 stripped_bamboo_block []
fill ~4 ~1 ~3 ~4 ~6 ~3 stripped_bamboo_block []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 stripped_bamboo_block []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 stripped_bamboo_block []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 stripped_bamboo_block []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 stripped_bamboo_block []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~1 ~-2 ~6 ~7 ~2 scaffolding []
fill ~5 ~7 ~-2 ~7 ~7 ~2 bamboo_mosaic_slab []
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 12
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 4
replaceitem block ~4 ~1 ~2 slot.container 10 bamboo 33
replaceitem block ~4 ~1 ~2 slot.container 11 scaffolding 18
replaceitem block ~4 ~1 ~2 slot.container 12 melon_slice 15
replaceitem block ~4 ~1 ~2 slot.container 13 cooked_chicken 12
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~-4 ~1 ~3 slot.container 10 bamboo 38
replaceitem block ~-4 ~1 ~3 slot.container 11 scaffolding 16
replaceitem block ~-4 ~1 ~3 slot.container 12 melon_slice 13
replaceitem block ~-4 ~1 ~3 slot.container 13 cooked_chicken 10
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
