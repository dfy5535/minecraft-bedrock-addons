# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0090/4224 | 主题内编号: b090/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·八角攒尖悬灯神龛 (plains_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 leather 9
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 13
replaceitem block ~3 ~-3 ~2 slot.container 5 string 8
replaceitem block ~3 ~-3 ~2 slot.container 9 oak_log 18
replaceitem block ~3 ~-3 ~2 slot.container 10 apple 9
replaceitem block ~3 ~-3 ~2 slot.container 11 golden_apple 5
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-3 ~2 slot.container 14 torch 16
loot insert ~3 ~-3 ~2 loot "rsf/plains"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 stripped_oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 stripped_oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 stripped_oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 stripped_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 oak_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 hay_block []
setblock ~0 ~11 ~0 lantern []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 bread 14
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_beef 6
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 14
replaceitem block ~-4 ~1 ~2 slot.container 13 oak_log 19
replaceitem block ~-4 ~1 ~2 slot.container 14 apple 10
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
