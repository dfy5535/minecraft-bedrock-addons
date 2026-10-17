# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0118/4224 | 主题内编号: b118/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·L型蜂农与林果采集屋 (plains_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 oak_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 oak_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~1 ~8 ~9 ~1 stripped_oak_log []
fill ~8 ~8 ~-1 ~8 ~8 ~3 cobblestone_wall []
fill ~8 ~6 ~1 ~8 ~10 ~1 cobblestone_wall []
setblock ~8 ~10 ~1 lantern []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 oak_log 22
replaceitem block ~-5 ~1 ~3 slot.container 10 apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 torch 20
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
