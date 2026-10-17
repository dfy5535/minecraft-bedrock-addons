# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3166/4224 | 主题内编号: b094/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·圆形圣泉祈祷亭 (lush_caves_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 moss_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~-3 ~-3 ~2 slot.container 1 slime_ball 16
replaceitem block ~-3 ~-3 ~2 slot.container 2 string 17
replaceitem block ~-3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 11
replaceitem block ~-3 ~-3 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~-3 ~-3 ~2 slot.container 9 gold_ingot 9
replaceitem block ~-3 ~-3 ~2 slot.container 10 diamond 6
replaceitem block ~-3 ~-3 ~2 slot.container 11 amethyst_shard 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 golden_apple 8
replaceitem block ~-3 ~-3 ~2 slot.container 13 water_bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 lantern 7
loot insert ~-3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~-3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 moss_block []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 polished_deepslate []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 polished_deepslate []
fill ~-1 ~1 ~-4 ~-1 ~6 ~-4 polished_deepslate []
fill ~-1 ~1 ~4 ~-1 ~6 ~4 polished_deepslate []
fill ~1 ~1 ~-4 ~1 ~6 ~-4 polished_deepslate []
fill ~1 ~1 ~4 ~1 ~6 ~4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~6 ~4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~6 ~4 polished_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 polished_deepslate []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 polished_deepslate []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 polished_deepslate []
fill ~5 ~1 ~0 ~5 ~6 ~0 polished_deepslate []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 polished_deepslate []
fill ~5 ~1 ~2 ~5 ~6 ~2 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 moss_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 polished_deepslate []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 polished_deepslate []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 polished_deepslate []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 polished_deepslate []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~0 ~-7 ~7 ~2 moss_block []
setblock ~-7 ~8 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 glow_berries 20
replaceitem block ~-4 ~1 ~2 slot.container 12 moss_block 21
replaceitem block ~-4 ~1 ~2 slot.container 13 clay_ball 22
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
