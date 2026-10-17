# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0904/4224 | 主题内编号: b008/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·凯旋双拱圣物祭坛 (jungle_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 moss_block []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 cobblestone_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 jungle_log []
setblock ~-5 ~10 ~-5 campfire []
setblock ~-5 ~9 ~5 jungle_log []
setblock ~-5 ~10 ~5 campfire []
setblock ~5 ~9 ~-5 jungle_log []
setblock ~5 ~10 ~-5 campfire []
setblock ~5 ~9 ~5 jungle_log []
setblock ~5 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~7 ~-9 ~5 ~8 mossy_stone_bricks []
setblock ~-8 ~6 ~7 gold_block []
setblock ~-8 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~4 slot.container 9 bamboo 13
replaceitem block ~-4 ~1 ~4 slot.container 10 jungle_log 18
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~4 loot "rsf/jungle"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 17
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 slime_ball 6
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 bamboo 18
replaceitem block ~4 ~1 ~4 slot.container 10 jungle_log 16
replaceitem block ~4 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~4 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~4 loot "rsf/jungle"
loot insert ~4 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
