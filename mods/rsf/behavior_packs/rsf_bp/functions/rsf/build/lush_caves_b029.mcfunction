# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3101/4224 | 主题内编号: b029/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·奥术星象琉璃塔 (lush_caves_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 ochre_froglight []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 rotten_flesh 12
replaceitem block ~3 ~-2 ~0 slot.container 1 gunpowder 11
replaceitem block ~3 ~-2 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 3 glow_ink_sac 15
replaceitem block ~3 ~-2 ~0 slot.container 4 slime_ball 16
replaceitem block ~3 ~-2 ~0 slot.container 5 string 17
replaceitem block ~3 ~-2 ~0 slot.container 9 lantern 11
replaceitem block ~3 ~-2 ~0 slot.container 10 glow_berries 22
replaceitem block ~3 ~-2 ~0 slot.container 11 moss_block 16
replaceitem block ~3 ~-2 ~0 slot.container 12 clay_ball 17
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 14 gold_ingot 9
loot insert ~3 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~3 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 moss_block []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 deepslate_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 oak_log []
setblock ~0 ~4 ~-6 chiseled_deepslate []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 oak_log []
setblock ~0 ~4 ~6 chiseled_deepslate []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 chiseled_deepslate []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 chiseled_deepslate []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~1 moss_block []
setblock ~-7 ~8 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 string 12
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 7
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~4 ~1 ~2 slot.container 12 amethyst_shard 11
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 2
replaceitem block ~-4 ~1 ~3 slot.container 12 amethyst_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-2 ~0
