# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3750/4224 | 主题内编号: b038/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·四方凯旋衣冠冢 (warped_forest_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 warped_planks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 blaze_rod 12
replaceitem block ~0 ~-2 ~-3 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 3 magma_cream 6
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 13
replaceitem block ~0 ~-2 ~-3 slot.container 5 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 9 obsidian 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 crying_obsidian 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 netherite_scrap 4
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 6
replaceitem block ~0 ~-2 ~-3 slot.container 13 warped_stem 21
replaceitem block ~0 ~-2 ~-3 slot.container 14 shroomlight 12
loot insert ~0 ~-2 ~-3 loot "rsf/warped_forest"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 blackstone []
fill ~-4 ~1 ~-2 ~4 ~7 ~2 blackstone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 warped_fence []
setblock ~4 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 warped_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 diamond_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 warped_stem []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 warped_stem []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 warped_stem []
fill ~7 ~0 ~2 ~7 ~7 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~-5 ~0 ~8 ~-5 ~8 ~8 warped_stem []
setblock ~-5 ~9 ~8 crying_obsidian []
setblock ~-5 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 crying_obsidian []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 warped_stem 21
replaceitem block ~-3 ~1 ~4 slot.container 10 shroomlight 12
replaceitem block ~-3 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 14 quartz 19
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 warped_stem 19
replaceitem block ~3 ~1 ~4 slot.container 10 shroomlight 10
replaceitem block ~3 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 quartz 17
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
