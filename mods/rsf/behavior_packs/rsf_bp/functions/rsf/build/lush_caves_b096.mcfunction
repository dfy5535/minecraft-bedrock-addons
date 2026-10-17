# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3168/4224 | 主题内编号: b096/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·高台三阶献祭神祠 (lush_caves_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 moss_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 11
replaceitem block ~3 ~-3 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 11
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 4 glow_ink_sac 15
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 9 water_bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 7
replaceitem block ~3 ~-3 ~2 slot.container 11 glow_berries 18
replaceitem block ~3 ~-3 ~2 slot.container 12 moss_block 19
replaceitem block ~3 ~-3 ~2 slot.container 13 clay_ball 20
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 13
loot insert ~3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 moss_block []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 moss_block []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 moss_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 moss_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 ochre_froglight []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 ochre_froglight []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 polished_deepslate []
setblock ~-9 ~4 ~0 ochre_froglight []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 polished_deepslate []
setblock ~9 ~4 ~0 ochre_froglight []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~0 moss_block []
setblock ~-7 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 string 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 7
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 14
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 8
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
