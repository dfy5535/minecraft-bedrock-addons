# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0030/4224 | 主题内编号: b030/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双坡顶驻军卫戍塔 (plains_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 lantern []
setblock ~3 ~-5 ~-2 lantern []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 13
replaceitem block ~3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 10 coal 17
replaceitem block ~3 ~-3 ~2 slot.container 11 oak_log 22
replaceitem block ~3 ~-3 ~2 slot.container 12 apple 6
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-3 ~2 loot "rsf/plains"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~9 ~4 stone_bricks []
fill ~-5 ~1 ~0 ~5 ~8 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~-1 ~8 ~3 air []
fill ~-1 ~1 ~1 ~4 ~7 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~10 ~-5 ~-6 ~10 ~5 oak_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-5 ~6 ~10 ~5 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-4 ~-5 ~11 ~4 oak_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-4 ~5 ~11 ~4 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-4 ~4 ~11 ~4 oak_slab []
fill ~0 ~12 ~-5 ~0 ~12 ~5 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~1 ~7 ~6 ~1 stripped_oak_log []
fill ~7 ~5 ~-1 ~7 ~5 ~3 cobblestone_wall []
fill ~7 ~3 ~1 ~7 ~7 ~1 cobblestone_wall []
setblock ~7 ~7 ~1 lantern []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 bread 10
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_beef 9
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 17
replaceitem block ~-4 ~1 ~2 slot.container 13 oak_log 22
replaceitem block ~-4 ~1 ~2 slot.container 14 apple 6
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
