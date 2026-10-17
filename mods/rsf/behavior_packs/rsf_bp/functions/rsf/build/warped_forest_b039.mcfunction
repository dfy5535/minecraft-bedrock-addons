# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3751/4224 | 主题内编号: b039/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·永恒圣火图腾方尖塔 (warped_forest_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~12 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~12 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 warped_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 quartz_block []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 magma_cream 6
replaceitem block ~1 ~-3 ~2 slot.container 1 string 13
replaceitem block ~1 ~-3 ~2 slot.container 2 bone 12
replaceitem block ~1 ~-3 ~2 slot.container 3 gold_nugget 19
replaceitem block ~1 ~-3 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~1 ~-3 ~2 slot.container 5 ender_pearl 17
replaceitem block ~1 ~-3 ~2 slot.container 9 golden_apple 7
replaceitem block ~1 ~-3 ~2 slot.container 10 warped_stem 22
replaceitem block ~1 ~-3 ~2 slot.container 11 shroomlight 6
replaceitem block ~1 ~-3 ~2 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~1 ~-3 ~2 slot.container 13 saddle 1
replaceitem block ~1 ~-3 ~2 slot.container 14 gold_ingot 11
loot insert ~1 ~-3 ~2 loot "rsf/warped_forest"
loot insert ~1 ~-3 ~2 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 warped_stem []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 warped_stem []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 warped_stem []
fill ~3 ~1 ~4 ~3 ~9 ~4 warped_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 warped_fence []
setblock ~3 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 warped_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 warped_stem []
setblock ~0 ~4 ~-6 shroomlight []
setblock ~0 ~5 ~-6 shroomlight []
fill ~0 ~0 ~6 ~0 ~3 ~6 warped_stem []
setblock ~0 ~4 ~6 shroomlight []
setblock ~0 ~5 ~6 shroomlight []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 warped_stem []
setblock ~-5 ~4 ~0 shroomlight []
setblock ~-5 ~5 ~0 shroomlight []
fill ~5 ~0 ~0 ~5 ~3 ~0 warped_stem []
setblock ~5 ~4 ~0 shroomlight []
setblock ~5 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x5x6) ---
fill ~-4 ~0 ~5 ~-4 ~9 ~5 warped_stem []
setblock ~-4 ~10 ~5 crying_obsidian []
setblock ~-4 ~11 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~1 ~3 slot.container 1 ender_pearl 12
replaceitem block ~2 ~1 ~3 slot.container 2 blaze_rod 7
replaceitem block ~2 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 4 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 5 string 16
replaceitem block ~2 ~1 ~3 slot.container 9 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 11 quartz 17
replaceitem block ~2 ~1 ~3 slot.container 12 obsidian 12
replaceitem block ~2 ~1 ~3 slot.container 13 crying_obsidian 9
replaceitem block ~2 ~1 ~3 slot.container 14 netherite_scrap 5
loot insert ~2 ~1 ~3 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
