# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0082/4224 | 主题内编号: b082/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·竖井井架矿工物资站 (plains_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 6格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 lantern []
setblock ~3 ~-7 ~-2 lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-5 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-5 ~2 slot.container 2 leather 9
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-5 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-5 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-5 ~2 slot.container 9 shield 1
replaceitem block ~3 ~-5 ~2 slot.container 10 torch 17
replaceitem block ~3 ~-5 ~2 slot.container 11 bread 10
replaceitem block ~3 ~-5 ~2 slot.container 12 cooked_beef 9
replaceitem block ~3 ~-5 ~2 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-5 ~2 slot.container 14 coal 17
loot insert ~3 ~-5 ~2 loot "rsf/plains"
loot insert ~3 ~-5 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 oak_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 oak_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 hay_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 stone_bricks []
setblock ~-7 ~5 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 stone_bricks []
setblock ~-7 ~5 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 stone_bricks []
setblock ~7 ~5 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 stone_bricks []
setblock ~7 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 stripped_oak_log []
fill ~7 ~7 ~-1 ~7 ~7 ~3 cobblestone_wall []
fill ~7 ~5 ~1 ~7 ~9 ~1 cobblestone_wall []
setblock ~7 ~9 ~1 lantern []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 12 torch 17
replaceitem block ~-4 ~1 ~2 slot.container 13 bread 10
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_beef 9
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
