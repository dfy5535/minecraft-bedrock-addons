# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3110/4224 | 主题内编号: b038/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·四方凯旋衣冠冢 (lush_caves_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 moss_block []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-2 slot.container 1 slime_ball 16
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 9 amethyst_shard 13
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 water_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 lantern 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 glow_berries 18
replaceitem block ~0 ~-3 ~-2 slot.container 14 moss_block 19
loot insert ~0 ~-3 ~-2 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~8 ~4 deepslate_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 deepslate_bricks []
fill ~-1 ~1 ~-3 ~1 ~7 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 moss_block []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_deepslate []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 ochre_froglight []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 ochre_froglight []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 ochre_froglight []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 ochre_froglight []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~2 moss_block []
setblock ~-7 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 chiseled_deepslate []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 glow_berries 18
replaceitem block ~-4 ~1 ~2 slot.container 10 moss_block 19
replaceitem block ~-4 ~1 ~2 slot.container 11 clay_ball 20
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 13
replaceitem block ~-4 ~1 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 14 diamond 2
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
