# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3174/4224 | 主题内编号: b102/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子箭塔联防碉楼 (lush_caves_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 clay []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 shroomlight []
setblock ~5 ~-5 ~-2 shroomlight []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~5 ~-3 ~2 slot.container 1 slime_ball 16
replaceitem block ~5 ~-3 ~2 slot.container 2 string 17
replaceitem block ~5 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 4 bone 11
replaceitem block ~5 ~-3 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~-3 ~2 slot.container 9 gold_ingot 11
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 8
replaceitem block ~5 ~-3 ~2 slot.container 11 amethyst_shard 8
replaceitem block ~5 ~-3 ~2 slot.container 12 golden_apple 3
replaceitem block ~5 ~-3 ~2 slot.container 13 water_bucket 1
replaceitem block ~5 ~-3 ~2 slot.container 14 lantern 9
loot insert ~5 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 moss_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 moss_block []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 deepslate_brick_wall []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 air []
setblock ~-7 ~9 ~-4 polished_deepslate []
setblock ~-7 ~10 ~-4 shroomlight []
setblock ~-7 ~9 ~4 polished_deepslate []
setblock ~-7 ~10 ~4 shroomlight []
setblock ~7 ~9 ~-4 polished_deepslate []
setblock ~7 ~10 ~-4 shroomlight []
setblock ~7 ~9 ~4 polished_deepslate []
setblock ~7 ~10 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~0 ~-9 ~5 ~2 moss_block []
setblock ~-9 ~6 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-6 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 4 string 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 clay_ball 19
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 8
replaceitem block ~-6 ~1 ~2 slot.container 13 amethyst_shard 8
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
