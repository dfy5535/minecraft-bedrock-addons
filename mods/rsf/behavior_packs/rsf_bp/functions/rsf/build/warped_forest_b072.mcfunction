# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3784/4224 | 主题内编号: b072/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·L型古商会废墟暗窖 (warped_forest_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~-2 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-2 ~4 slot.container 4 ender_pearl 17
replaceitem block ~3 ~-2 ~4 slot.container 5 blaze_rod 12
replaceitem block ~3 ~-2 ~4 slot.container 9 obsidian 10
replaceitem block ~3 ~-2 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~3 ~-2 ~4 slot.container 11 netherite_scrap 3
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~-2 ~4 slot.container 13 warped_stem 20
replaceitem block ~3 ~-2 ~4 slot.container 14 shroomlight 11
loot insert ~3 ~-2 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 warped_planks []
fill ~-5 ~1 ~0 ~5 ~4 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 warped_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 quartz_block []
fill ~0 ~14 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_blackstone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 warped_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 warped_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 warped_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~7 ~-6 ~7 ~7 warped_stem []
setblock ~-6 ~8 ~7 crying_obsidian []
setblock ~-6 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 string 16
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 16
replaceitem block ~-4 ~1 ~5 slot.container 13 obsidian 11
replaceitem block ~-4 ~1 ~5 slot.container 14 crying_obsidian 8
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 19
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 16
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 6
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
