# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3797/4224 | 主题内编号: b085/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子烟囱砖石窑厂 (warped_forest_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 warped_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 ender_pearl 17
replaceitem block ~4 ~-3 ~3 slot.container 1 blaze_rod 12
replaceitem block ~4 ~-3 ~3 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-3 ~3 slot.container 3 magma_cream 6
replaceitem block ~4 ~-3 ~3 slot.container 4 string 13
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~3 slot.container 9 obsidian 13
replaceitem block ~4 ~-3 ~3 slot.container 10 crying_obsidian 10
replaceitem block ~4 ~-3 ~3 slot.container 11 netherite_scrap 6
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 8
replaceitem block ~4 ~-3 ~3 slot.container 13 warped_stem 16
replaceitem block ~4 ~-3 ~3 slot.container 14 shroomlight 7
loot insert ~4 ~-3 ~3 loot "rsf/warped_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 warped_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 warped_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_blackstone_bricks []
fill ~0 ~13 ~0 ~0 ~15 ~0 crying_obsidian []
setblock ~0 ~16 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 warped_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_warped_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_warped_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 warped_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~7 ~-6 ~5 ~7 warped_stem []
setblock ~-6 ~6 ~7 crying_obsidian []
setblock ~-6 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~4 slot.container 3 ender_pearl 12
replaceitem block ~4 ~1 ~4 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 9 shroomlight 9
replaceitem block ~4 ~1 ~4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 12 gold_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 13 quartz 16
replaceitem block ~4 ~1 ~4 slot.container 14 obsidian 11
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
