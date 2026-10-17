# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3147/4224 | 主题内编号: b075/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·远古巨石环廊法阵 (lush_caves_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tiles []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_tiles []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 moss_block []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-2 ~-4 slot.container 1 gunpowder 11
replaceitem block ~0 ~-2 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~-4 slot.container 3 glow_ink_sac 15
replaceitem block ~0 ~-2 ~-4 slot.container 4 slime_ball 16
replaceitem block ~0 ~-2 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-2 ~-4 slot.container 9 golden_apple 2
replaceitem block ~0 ~-2 ~-4 slot.container 10 water_bucket 1
replaceitem block ~0 ~-2 ~-4 slot.container 11 lantern 8
replaceitem block ~0 ~-2 ~-4 slot.container 12 glow_berries 19
replaceitem block ~0 ~-2 ~-4 slot.container 13 moss_block 20
replaceitem block ~0 ~-2 ~-4 slot.container 14 clay_ball 21
loot insert ~0 ~-2 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-2 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 moss_block []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 oak_log []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 oak_log []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 oak_log []
fill ~7 ~1 ~6 ~7 ~6 ~6 oak_log []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 oak_log []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 oak_log []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 oak_log []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 oak_log []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 oak_log []
fill ~7 ~1 ~0 ~7 ~6 ~0 oak_log []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 oak_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 oak_log []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 oak_log []
fill ~7 ~1 ~4 ~7 ~6 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 oak_log []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 oak_log []
setblock ~-7 ~10 ~6 lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 oak_log []
setblock ~7 ~10 ~-6 lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 oak_log []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-2 ~-9 ~3 ~0 moss_block []
setblock ~-9 ~4 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 14
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 9 moss_block 20
replaceitem block ~6 ~1 ~4 slot.container 10 clay_ball 21
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 3
replaceitem block ~6 ~1 ~4 slot.container 14 amethyst_shard 10
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 moss_block 18
replaceitem block ~-6 ~1 ~5 slot.container 10 clay_ball 19
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 12 gold_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 8
replaceitem block ~-6 ~1 ~5 slot.container 14 amethyst_shard 8
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
