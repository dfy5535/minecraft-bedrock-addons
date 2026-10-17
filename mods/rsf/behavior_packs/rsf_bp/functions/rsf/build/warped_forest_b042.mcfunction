# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3754/4224 | 主题内编号: b042/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·地底铁栏死斗深坑 (warped_forest_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~4 soul_lantern []
setblock ~3 ~-5 ~-4 soul_lantern []
setblock ~3 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~4 slot.container 0 string 13
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 17
replaceitem block ~3 ~-3 ~4 slot.container 5 blaze_rod 12
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 10 quartz 21
replaceitem block ~3 ~-3 ~4 slot.container 11 obsidian 16
replaceitem block ~3 ~-3 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~3 ~-3 ~4 slot.container 13 netherite_scrap 2
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~-3 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-3 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 warped_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 warped_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 warped_planks []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 blackstone []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 crying_obsidian []
setblock ~0 ~8 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 warped_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~7 ~-6 ~7 ~7 warped_stem []
setblock ~-6 ~8 ~7 crying_obsidian []
setblock ~-6 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 2 string 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 21
replaceitem block ~-4 ~1 ~5 slot.container 13 obsidian 16
replaceitem block ~-4 ~1 ~5 slot.container 14 crying_obsidian 6
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 19
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 11
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
