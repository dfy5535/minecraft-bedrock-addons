# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3111/4224 | 主题内编号: b039/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·永恒圣火图腾方尖塔 (lush_caves_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 mossy_stone_bricks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 spider_eye 6
replaceitem block ~2 ~-2 ~1 slot.container 1 bone 11
replaceitem block ~2 ~-2 ~1 slot.container 2 rotten_flesh 12
replaceitem block ~2 ~-2 ~1 slot.container 3 gunpowder 11
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-2 ~1 slot.container 5 glow_ink_sac 15
replaceitem block ~2 ~-2 ~1 slot.container 9 lantern 8
replaceitem block ~2 ~-2 ~1 slot.container 10 glow_berries 19
replaceitem block ~2 ~-2 ~1 slot.container 11 moss_block 20
replaceitem block ~2 ~-2 ~1 slot.container 12 clay_ball 21
replaceitem block ~2 ~-2 ~1 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-2 ~1 slot.container 14 gold_ingot 6
loot insert ~2 ~-2 ~1 loot "rsf/lush_caves"
loot insert ~2 ~-2 ~1 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 moss_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 oak_log []
setblock ~0 ~4 ~-5 emerald_block []
setblock ~0 ~5 ~-5 lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 oak_log []
setblock ~0 ~4 ~5 emerald_block []
setblock ~0 ~5 ~5 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-6 ~0 ~0 ~-6 ~7 ~2 moss_block []
setblock ~-6 ~8 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 1 glow_ink_sac 10
replaceitem block ~3 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 3 string 12
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 bone 14
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 10 gold_ingot 10
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 7
replaceitem block ~3 ~1 ~1 slot.container 12 amethyst_shard 14
replaceitem block ~3 ~1 ~1 slot.container 13 golden_apple 2
replaceitem block ~3 ~1 ~1 slot.container 14 water_bucket 1
loot insert ~3 ~1 ~1 loot "rsf/lush_caves"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 slime_ball 14
replaceitem block ~-3 ~1 ~2 slot.container 1 string 15
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 17
replaceitem block ~-3 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-3 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 10 gold_ingot 8
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 5
replaceitem block ~-3 ~1 ~2 slot.container 12 amethyst_shard 12
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 7
replaceitem block ~-3 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-3 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-3 ~1 ~2 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
