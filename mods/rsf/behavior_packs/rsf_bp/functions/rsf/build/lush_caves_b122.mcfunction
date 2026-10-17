# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3194/4224 | 主题内编号: b122/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字穹顶宏伟圣堂与墓窟 (lush_caves_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 clay []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 moss_block []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 bone 11
replaceitem block ~0 ~-4 ~-4 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-4 ~-4 slot.container 2 gunpowder 11
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 glow_ink_sac 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 slime_ball 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 water_bucket 1
replaceitem block ~0 ~-4 ~-4 slot.container 10 lantern 12
replaceitem block ~0 ~-4 ~-4 slot.container 11 glow_berries 16
replaceitem block ~0 ~-4 ~-4 slot.container 12 moss_block 17
replaceitem block ~0 ~-4 ~-4 slot.container 13 clay_ball 18
replaceitem block ~0 ~-4 ~-4 slot.container 14 iron_ingot 11
loot insert ~0 ~-4 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 deepslate_bricks []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 deepslate_bricks []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 deepslate_brick_wall []
setblock ~7 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 moss_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 chiseled_deepslate []
setblock ~0 ~17 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~8 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-3 ~-9 ~5 ~-1 moss_block []
setblock ~-9 ~6 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 clay_ball 18
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 12 diamond 7
replaceitem block ~-6 ~1 ~4 slot.container 13 amethyst_shard 14
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
