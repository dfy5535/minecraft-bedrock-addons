# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3198/4224 | 主题内编号: b126/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子主塔天桥宫殿与暗牢 (lush_caves_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 deepslate_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 deepslate_bricks [] replace water
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 clay []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 deepslate_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 shroomlight []
setblock ~5 ~-6 ~-3 shroomlight []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 glow_ink_sac 15
replaceitem block ~5 ~-4 ~3 slot.container 1 slime_ball 16
replaceitem block ~5 ~-4 ~3 slot.container 2 string 17
replaceitem block ~5 ~-4 ~3 slot.container 3 spider_eye 6
replaceitem block ~5 ~-4 ~3 slot.container 4 bone 11
replaceitem block ~5 ~-4 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~-4 ~3 slot.container 9 amethyst_shard 9
replaceitem block ~5 ~-4 ~3 slot.container 10 golden_apple 4
replaceitem block ~5 ~-4 ~3 slot.container 11 water_bucket 1
replaceitem block ~5 ~-4 ~3 slot.container 12 lantern 10
replaceitem block ~5 ~-4 ~3 slot.container 13 glow_berries 21
replaceitem block ~5 ~-4 ~3 slot.container 14 moss_block 22
loot insert ~5 ~-4 ~3 loot "rsf/lush_caves"
loot insert ~5 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~10 ~5 deepslate_bricks []
fill ~2 ~1 ~-5 ~7 ~10 ~5 deepslate_bricks []
fill ~-6 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~6 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 moss_block []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 moss_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 chiseled_deepslate []
setblock ~0 ~17 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 moss_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-2 ~-9 ~4 ~0 moss_block []
setblock ~-9 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 2 glow_ink_sac 10
replaceitem block ~-6 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~3 slot.container 4 string 12
replaceitem block ~-6 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~3 slot.container 9 gold_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond 2
replaceitem block ~-6 ~1 ~3 slot.container 11 amethyst_shard 9
replaceitem block ~-6 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-6 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 14 lantern 10
loot insert ~-6 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
