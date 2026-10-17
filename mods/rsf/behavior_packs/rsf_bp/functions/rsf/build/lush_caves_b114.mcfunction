# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3186/4224 | 主题内编号: b114/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双联拱顶植物培育馆 (lush_caves_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 clay []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 moss_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 moss_block []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 deepslate_tiles []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~2 moss_block []
setblock ~-9 ~8 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 12
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 8
replaceitem block ~-6 ~1 ~2 slot.container 11 glow_berries 19
replaceitem block ~-6 ~1 ~2 slot.container 12 moss_block 20
replaceitem block ~-6 ~1 ~2 slot.container 13 clay_ball 21
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 14
loot insert ~-6 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
