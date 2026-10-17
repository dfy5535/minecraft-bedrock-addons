# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3780/4224 | 主题内编号: b068/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·断裂凯旋高架拱廊 (warped_forest_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 warped_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 warped_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 warped_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 warped_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 warped_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~8 ~-7 ~8 ~8 warped_stem []
setblock ~-7 ~9 ~8 crying_obsidian []
setblock ~-7 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 16
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 gold_nugget 22
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 12
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~4 slot.container 9 warped_stem 16
replaceitem block ~-5 ~1 ~4 slot.container 10 shroomlight 7
replaceitem block ~-5 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 quartz 21
loot insert ~-5 ~1 ~4 loot "rsf/warped_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gold_nugget 17
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 15
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 10
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 9 warped_stem 21
replaceitem block ~5 ~1 ~4 slot.container 10 shroomlight 12
replaceitem block ~5 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 14 quartz 19
loot insert ~5 ~1 ~4 loot "rsf/warped_forest"
loot insert ~5 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
