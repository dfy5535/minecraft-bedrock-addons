# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3094/4224 | 主题内编号: b022/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·廊柱书库秘藏室 (lush_caves_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 amethyst_shard 11
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 12
replaceitem block ~4 ~-3 ~3 slot.container 13 glow_berries 16
replaceitem block ~4 ~-3 ~3 slot.container 14 moss_block 17
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 moss_block []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 polished_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 polished_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 polished_deepslate []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 polished_deepslate []
fill ~0 ~1 ~5 ~0 ~6 ~5 polished_deepslate []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 polished_deepslate []
fill ~2 ~1 ~5 ~2 ~6 ~5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~6 ~5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~6 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~6 ~3 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 moss_block []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_deepslate []
setblock ~0 ~11 ~0 shroomlight []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 16
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 12
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
