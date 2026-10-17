# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0016/4224 | 主题内编号: b016/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·要塞地底重装暗牢 (plains_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 campfire []
setblock ~5 ~-6 ~0 campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 leather 9
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 3 bone 14
replaceitem block ~0 ~-4 ~4 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~4 slot.container 5 string 8
replaceitem block ~0 ~-4 ~4 slot.container 9 bread 9
replaceitem block ~0 ~-4 ~4 slot.container 10 cooked_beef 8
replaceitem block ~0 ~-4 ~4 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-4 ~4 slot.container 12 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 13 oak_log 21
replaceitem block ~0 ~-4 ~4 slot.container 14 apple 12
loot insert ~0 ~-4 ~4 loot "rsf/plains"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 leather 7
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 gunpowder 11
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 bread 8
replaceitem block ~0 ~-4 ~-4 slot.container 10 cooked_beef 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-4 ~-4 slot.container 12 coal 15
replaceitem block ~0 ~-4 ~-4 slot.container 13 oak_log 20
replaceitem block ~0 ~-4 ~-4 slot.container 14 apple 11
loot insert ~0 ~-4 ~-4 loot "rsf/plains"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 cracked_stone_bricks []
setblock ~-7 ~9 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 cracked_stone_bricks []
setblock ~-7 ~9 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 cracked_stone_bricks []
setblock ~6 ~9 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~8 ~6 cracked_stone_bricks []
setblock ~6 ~9 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cracked_stone_bricks []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 stone_bricks []
setblock ~-7 ~8 ~-6 campfire []
setblock ~-7 ~7 ~6 stone_bricks []
setblock ~-7 ~8 ~6 campfire []
setblock ~7 ~7 ~-6 stone_bricks []
setblock ~7 ~8 ~-6 campfire []
setblock ~7 ~7 ~6 stone_bricks []
setblock ~7 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~0 ~9 ~7 ~0 stone_bricks []
fill ~9 ~6 ~-2 ~9 ~6 ~2 cobblestone_wall []
fill ~9 ~4 ~0 ~9 ~8 ~0 cobblestone_wall []
setblock ~9 ~8 ~0 campfire []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 10 torch 19
replaceitem block ~-6 ~1 ~4 slot.container 11 bread 12
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_beef 11
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 12
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
