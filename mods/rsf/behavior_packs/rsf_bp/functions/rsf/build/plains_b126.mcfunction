# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0126/4224 | 主题内编号: b126/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子主塔天桥宫殿与暗牢 (plains_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 stone_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 stone_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 oak_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cobblestone []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 lantern []
setblock ~5 ~-6 ~-3 lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~5 ~-4 ~3 slot.container 2 gunpowder 13
replaceitem block ~5 ~-4 ~3 slot.container 3 string 8
replaceitem block ~5 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~3 slot.container 5 spider_eye 6
replaceitem block ~5 ~-4 ~3 slot.container 9 bread 10
replaceitem block ~5 ~-4 ~3 slot.container 10 cooked_beef 9
replaceitem block ~5 ~-4 ~3 slot.container 11 iron_ingot 9
replaceitem block ~5 ~-4 ~3 slot.container 12 coal 17
replaceitem block ~5 ~-4 ~3 slot.container 13 oak_log 22
replaceitem block ~5 ~-4 ~3 slot.container 14 apple 6
loot insert ~5 ~-4 ~3 loot "rsf/plains"
loot insert ~5 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~10 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~7 ~10 ~5 stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~6 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 hay_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 cracked_stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stone_bricks []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stone_bricks []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~-1 ~9 ~7 ~-1 stripped_oak_log []
fill ~9 ~6 ~-3 ~9 ~6 ~1 cobblestone_wall []
fill ~9 ~4 ~-1 ~9 ~8 ~-1 cobblestone_wall []
setblock ~9 ~8 ~-1 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 10 torch 17
replaceitem block ~-6 ~1 ~3 slot.container 11 bread 10
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_beef 9
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 14 coal 17
loot insert ~-6 ~1 ~3 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
