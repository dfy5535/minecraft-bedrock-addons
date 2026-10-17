# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0060/4224 | 主题内编号: b060/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·圆形穹顶万骨祠堂 (plains_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 gunpowder 13
replaceitem block ~0 ~-4 ~3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~3 slot.container 2 arrow 17
replaceitem block ~0 ~-4 ~3 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 4 leather 9
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 10 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 11 oak_log 21
replaceitem block ~0 ~-4 ~3 slot.container 12 apple 12
replaceitem block ~0 ~-4 ~3 slot.container 13 golden_apple 1
replaceitem block ~0 ~-4 ~3 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~3 loot "rsf/plains"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gunpowder 11
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 3 spider_eye 4
replaceitem block ~0 ~-4 ~-3 slot.container 4 leather 7
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 coal 15
replaceitem block ~0 ~-4 ~-3 slot.container 11 oak_log 20
replaceitem block ~0 ~-4 ~-3 slot.container 12 apple 11
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~-3 loot "rsf/plains"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cracked_stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stone_bricks []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stone_bricks []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 stone_bricks []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 stone_bricks []
fill ~0 ~1 ~5 ~0 ~6 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 stone_bricks []
fill ~2 ~1 ~5 ~2 ~6 ~5 stone_bricks []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stone_bricks []
fill ~4 ~1 ~5 ~4 ~6 ~5 stone_bricks []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stone_bricks []
fill ~6 ~1 ~5 ~6 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stone_bricks []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stone_bricks []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stone_bricks []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stone_bricks []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stone_bricks []
fill ~6 ~1 ~1 ~6 ~6 ~1 stone_bricks []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stone_bricks []
fill ~6 ~1 ~3 ~6 ~6 ~3 stone_bricks []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cracked_stone_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-2 ~8 ~6 ~-2 stone_bricks []
fill ~8 ~5 ~-4 ~8 ~5 ~0 cobblestone_wall []
fill ~8 ~3 ~-2 ~8 ~7 ~-2 cobblestone_wall []
setblock ~8 ~7 ~-2 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 9 bread 12
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_beef 11
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 13 oak_log 17
replaceitem block ~-5 ~1 ~3 slot.container 14 apple 8
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
