# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3079/4224 | 主题内编号: b007/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·八角星芒图腾祭坛 (lush_caves_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 1 glow_ink_sac 15
replaceitem block ~4 ~-2 ~0 slot.container 2 slime_ball 16
replaceitem block ~4 ~-2 ~0 slot.container 3 string 17
replaceitem block ~4 ~-2 ~0 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~0 slot.container 5 bone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-2 ~0 slot.container 10 gold_ingot 11
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~0 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~-2 ~0 slot.container 13 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 14 water_bucket 1
loot insert ~4 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 air []
fill ~6 ~1 ~5 ~6 ~9 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 moss_block []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 glow_berries 18
replaceitem block ~5 ~1 ~3 slot.container 13 moss_block 19
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 20
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 12 glow_berries 16
replaceitem block ~-5 ~1 ~4 slot.container 13 moss_block 17
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 18
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
