# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3192/4224 | 主题内编号: b120/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·引水渠跨桥水培温室 (lush_caves_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 moss_block []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 string 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~-4 ~-3 ~2 slot.container 2 bone 11
replaceitem block ~-4 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~-4 ~-3 ~2 slot.container 4 gunpowder 11
replaceitem block ~-4 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-3 ~2 slot.container 9 clay_ball 17
replaceitem block ~-4 ~-3 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~-3 ~2 slot.container 11 gold_ingot 9
replaceitem block ~-4 ~-3 ~2 slot.container 12 diamond 6
replaceitem block ~-4 ~-3 ~2 slot.container 13 amethyst_shard 13
replaceitem block ~-4 ~-3 ~2 slot.container 14 golden_apple 8
loot insert ~-4 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~-4 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 deepslate_tiles []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 moss_block []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 glass []
fill ~-4 ~7 ~-2 ~4 ~7 ~2 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 moss_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-2 ~-8 ~3 ~0 moss_block []
setblock ~-8 ~4 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-5 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 2 string 12
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 amethyst_shard 8
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 13 glow_berries 20
replaceitem block ~-5 ~1 ~2 slot.container 14 moss_block 21
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
