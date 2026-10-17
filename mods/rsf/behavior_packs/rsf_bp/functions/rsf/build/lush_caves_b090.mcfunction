# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3162/4224 | 主题内编号: b090/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·八角攒尖悬灯神龛 (lush_caves_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 11
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 2 glow_ink_sac 15
replaceitem block ~3 ~-3 ~2 slot.container 3 slime_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 4 string 17
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 9 glow_berries 17
replaceitem block ~3 ~-3 ~2 slot.container 10 moss_block 18
replaceitem block ~3 ~-3 ~2 slot.container 11 clay_ball 19
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_ingot 12
replaceitem block ~3 ~-3 ~2 slot.container 13 gold_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 14 diamond 8
loot insert ~3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 polished_deepslate []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 polished_deepslate []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 polished_deepslate []
fill ~4 ~1 ~3 ~4 ~7 ~3 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 moss_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_deepslate []
setblock ~0 ~11 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 polished_deepslate []
setblock ~-7 ~5 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 polished_deepslate []
setblock ~-7 ~5 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 polished_deepslate []
setblock ~7 ~5 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~4 ~6 polished_deepslate []
setblock ~7 ~5 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~3 ~2 moss_block []
setblock ~-7 ~4 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 12
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 13
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 13 glow_berries 18
replaceitem block ~-4 ~1 ~2 slot.container 14 moss_block 19
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
