# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3171/4224 | 主题内编号: b099/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·铁闸门瓮城防御堡 (lush_caves_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_tiles []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 deepslate_tiles []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~2 slot.container 1 glow_ink_sac 15
replaceitem block ~4 ~-2 ~2 slot.container 2 slime_ball 16
replaceitem block ~4 ~-2 ~2 slot.container 3 string 17
replaceitem block ~4 ~-2 ~2 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~2 slot.container 5 bone 11
replaceitem block ~4 ~-2 ~2 slot.container 9 golden_apple 5
replaceitem block ~4 ~-2 ~2 slot.container 10 water_bucket 1
replaceitem block ~4 ~-2 ~2 slot.container 11 lantern 11
replaceitem block ~4 ~-2 ~2 slot.container 12 glow_berries 22
replaceitem block ~4 ~-2 ~2 slot.container 13 moss_block 16
replaceitem block ~4 ~-2 ~2 slot.container 14 clay_ball 17
loot insert ~4 ~-2 ~2 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 moss_block []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 oak_log []
setblock ~-6 ~9 ~-4 lantern []
setblock ~-6 ~8 ~4 oak_log []
setblock ~-6 ~9 ~4 lantern []
setblock ~6 ~8 ~-4 oak_log []
setblock ~6 ~9 ~-4 lantern []
setblock ~6 ~8 ~4 oak_log []
setblock ~6 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 moss_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-3 ~-8 ~7 ~-1 moss_block []
setblock ~-8 ~8 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 1 bone 14
replaceitem block ~5 ~1 ~2 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~2 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~2 slot.container 10 gold_ingot 7
replaceitem block ~5 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~5 ~1 ~2 slot.container 12 amethyst_shard 11
replaceitem block ~5 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~5 ~1 ~2 loot "rsf/lush_caves"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~3 slot.container 5 string 15
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 2
replaceitem block ~-5 ~1 ~3 slot.container 12 amethyst_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~3 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
