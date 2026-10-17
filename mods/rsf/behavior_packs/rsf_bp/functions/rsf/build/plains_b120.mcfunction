# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0120/4224 | 主题内编号: b120/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·引水渠跨桥水培温室 (plains_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 cracked_stone_bricks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 gunpowder 13
replaceitem block ~-4 ~-3 ~2 slot.container 1 string 8
replaceitem block ~-4 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~-4 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~-4 ~-3 ~2 slot.container 4 leather 9
replaceitem block ~-4 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-3 ~2 slot.container 9 golden_apple 3
replaceitem block ~-4 ~-3 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~-3 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~-3 ~2 slot.container 12 torch 21
replaceitem block ~-4 ~-3 ~2 slot.container 13 bread 14
replaceitem block ~-4 ~-3 ~2 slot.container 14 cooked_beef 6
loot insert ~-4 ~-3 ~2 loot "rsf/plains"
loot insert ~-4 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 cracked_stone_bricks []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 glass []
fill ~-4 ~7 ~-2 ~4 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~8 ~0 ~-1 ~8 ~6 ~-1 stone_bricks []
fill ~8 ~5 ~-3 ~8 ~5 ~1 cobblestone_wall []
fill ~8 ~3 ~-1 ~8 ~7 ~-1 cobblestone_wall []
setblock ~8 ~7 ~-1 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 9 bread 9
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_beef 8
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~-5 ~1 ~2 slot.container 12 coal 16
replaceitem block ~-5 ~1 ~2 slot.container 13 oak_log 21
replaceitem block ~-5 ~1 ~2 slot.container 14 apple 12
loot insert ~-5 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
