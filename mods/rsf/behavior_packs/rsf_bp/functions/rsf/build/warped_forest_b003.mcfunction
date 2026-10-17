# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3715/4224 | 主题内编号: b003/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·环柱巨石方尖祭坛 (warped_forest_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 warped_planks []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 gold_nugget 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 shroomlight 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 quartz 21
replaceitem block ~0 ~-3 ~-4 slot.container 14 obsidian 16
loot insert ~0 ~-3 ~-4 loot "rsf/warped_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 warped_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 warped_stem []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 warped_stem []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 warped_stem []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 warped_stem []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 warped_stem []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 warped_stem []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 warped_stem []
fill ~1 ~1 ~6 ~1 ~7 ~6 warped_stem []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 warped_stem []
fill ~3 ~1 ~6 ~3 ~7 ~6 warped_stem []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 warped_stem []
fill ~5 ~1 ~6 ~5 ~7 ~6 warped_stem []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 warped_stem []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 warped_stem []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 warped_stem []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 warped_stem []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 warped_stem []
fill ~5 ~1 ~0 ~5 ~7 ~0 warped_stem []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 warped_stem []
fill ~5 ~1 ~2 ~5 ~7 ~2 warped_stem []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 warped_stem []
fill ~5 ~1 ~4 ~5 ~7 ~4 warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 warped_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 quartz_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 warped_stem []
setblock ~0 ~4 ~-8 shroomlight []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 warped_stem []
setblock ~0 ~4 ~8 shroomlight []
setblock ~0 ~5 ~8 shroomlight []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 warped_stem []
setblock ~-7 ~4 ~0 shroomlight []
setblock ~-7 ~5 ~0 shroomlight []
fill ~7 ~0 ~0 ~7 ~3 ~0 warped_stem []
setblock ~7 ~4 ~0 shroomlight []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~7 ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 crying_obsidian []
setblock ~-6 ~10 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 1 string 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 16
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 6
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 14 warped_stem 19
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
