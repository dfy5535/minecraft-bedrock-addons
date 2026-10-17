# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0995/4224 | 主题内编号: b099/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·铁闸门瓮城防御堡 (jungle_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 jungle_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 jungle_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 jungle_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 3 string 19
replaceitem block ~3 ~-3 ~3 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 9 torch 20
replaceitem block ~3 ~-3 ~3 slot.container 10 melon_slice 21
replaceitem block ~3 ~-3 ~3 slot.container 11 cocoa_beans 14
replaceitem block ~3 ~-3 ~3 slot.container 12 bamboo 12
replaceitem block ~3 ~-3 ~3 slot.container 13 jungle_log 17
replaceitem block ~3 ~-3 ~3 slot.container 14 gold_ingot 8
loot insert ~3 ~-3 ~3 loot "rsf/jungle"
loot insert ~3 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 jungle_planks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 mossy_stone_bricks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 jungle_fence []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 stripped_jungle_log []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 stripped_jungle_log []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 stripped_jungle_log []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 stripped_jungle_log []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~8 ~-9 ~6 ~9 mossy_stone_bricks []
setblock ~-8 ~7 ~8 gold_block []
setblock ~-8 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~4 ~1 ~4 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~4 slot.container 13 torch 21
replaceitem block ~4 ~1 ~4 slot.container 14 melon_slice 22
loot insert ~4 ~1 ~4 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
