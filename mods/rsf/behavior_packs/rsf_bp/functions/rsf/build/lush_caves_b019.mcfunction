# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3091/4224 | 主题内编号: b019/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·琉璃穹顶圣物秘室 (lush_caves_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 1 bone 11
replaceitem block ~3 ~-2 ~0 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-2 ~0 slot.container 3 gunpowder 11
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 5 glow_ink_sac 15
replaceitem block ~3 ~-2 ~0 slot.container 9 lantern 8
replaceitem block ~3 ~-2 ~0 slot.container 10 glow_berries 19
replaceitem block ~3 ~-2 ~0 slot.container 11 moss_block 20
replaceitem block ~3 ~-2 ~0 slot.container 12 clay_ball 21
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 14
replaceitem block ~3 ~-2 ~0 slot.container 14 gold_ingot 6
loot insert ~3 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~3 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 moss_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-3 ~-7 ~7 ~-1 moss_block []
setblock ~-7 ~8 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 14
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 glow_ink_sac 13
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 5 string 15
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 12 amethyst_shard 13
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
