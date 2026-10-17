# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0077/4224 | 主题内编号: b077/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子鸟居图腾神道 (plains_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-5 ~7 ~7 ~5 stone_brick_slab []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 stone_bricks []
fill ~-6 ~10 ~-4 ~6 ~10 ~4 oak_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 oak_log []
fill ~8 ~7 ~-2 ~8 ~7 ~2 oak_fence []
fill ~8 ~5 ~0 ~8 ~9 ~0 oak_fence []
setblock ~8 ~9 ~0 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 1 leather 12
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 bone 9
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_beef 6
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 6
replaceitem block ~5 ~1 ~2 slot.container 11 coal 14
replaceitem block ~5 ~1 ~2 slot.container 12 oak_log 19
replaceitem block ~5 ~1 ~2 slot.container 13 apple 10
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~2 loot "rsf/plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_beef 11
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 12 oak_log 17
replaceitem block ~-5 ~1 ~3 slot.container 13 apple 8
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~3 loot "rsf/plains"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
