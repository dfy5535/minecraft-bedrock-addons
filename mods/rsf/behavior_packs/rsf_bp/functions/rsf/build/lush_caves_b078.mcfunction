# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3150/4224 | 主题内编号: b078/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·下沉祭池图腾柱群 (lush_caves_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 chiseled_deepslate []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 amethyst_shard 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-3 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 polished_deepslate []
setblock ~-6 ~9 ~-5 shroomlight []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 polished_deepslate []
setblock ~-6 ~9 ~5 shroomlight []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 polished_deepslate []
setblock ~6 ~9 ~-5 shroomlight []
fill ~6 ~6 ~5 ~6 ~8 ~5 polished_deepslate []
setblock ~6 ~9 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 polished_deepslate []
setblock ~-8 ~5 ~-7 shroomlight []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 polished_deepslate []
setblock ~-8 ~5 ~7 shroomlight []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 polished_deepslate []
setblock ~8 ~5 ~-7 shroomlight []
fill ~8 ~0 ~7 ~8 ~4 ~7 polished_deepslate []
setblock ~8 ~5 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~0 ~-8 ~6 ~2 moss_block []
setblock ~-8 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 glow_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 10 moss_block 17
replaceitem block ~-5 ~1 ~3 slot.container 11 clay_ball 18
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 7
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
