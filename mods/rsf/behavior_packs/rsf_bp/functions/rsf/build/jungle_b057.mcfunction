# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0953/4224 | 主题内编号: b057/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·中央石棺帝王地下陵寝 (jungle_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 jungle_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 jungle_planks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 mossy_cobblestone []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_cobblestone []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 slime_ball 8
replaceitem block ~0 ~-4 ~-5 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 8
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 torch 17
replaceitem block ~0 ~-4 ~-5 slot.container 14 melon_slice 18
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 cracked_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-7 ~0 ~2 ~7 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mossy_cobblestone []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 mossy_cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 jungle_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-8 ~0 ~10 ~-9 ~4 ~11 mossy_stone_bricks []
setblock ~-8 ~5 ~10 gold_block []
setblock ~-8 ~6 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 14
replaceitem block ~4 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 9 torch 17
replaceitem block ~4 ~1 ~6 slot.container 10 melon_slice 18
replaceitem block ~4 ~1 ~6 slot.container 11 cocoa_beans 11
replaceitem block ~4 ~1 ~6 slot.container 12 bamboo 16
replaceitem block ~4 ~1 ~6 slot.container 13 jungle_log 21
replaceitem block ~4 ~1 ~6 slot.container 14 gold_ingot 12
loot insert ~4 ~1 ~6 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0
