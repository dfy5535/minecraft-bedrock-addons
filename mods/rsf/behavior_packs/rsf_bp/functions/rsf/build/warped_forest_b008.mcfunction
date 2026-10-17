# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3720/4224 | 主题内编号: b008/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·凯旋双拱圣物祭坛 (warped_forest_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 warped_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 warped_planks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 warped_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 warped_planks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 polished_blackstone_bricks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 warped_fence []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 warped_stem []
setblock ~-5 ~8 ~-5 soul_lantern []
setblock ~-5 ~7 ~5 warped_stem []
setblock ~-5 ~8 ~5 soul_lantern []
setblock ~5 ~7 ~-5 warped_stem []
setblock ~5 ~8 ~-5 soul_lantern []
setblock ~5 ~7 ~5 warped_stem []
setblock ~5 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_blackstone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-6 ~0 ~8 ~-6 ~8 ~8 warped_stem []
setblock ~-6 ~9 ~8 crying_obsidian []
setblock ~-6 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 12
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 4 string 16
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 warped_stem 19
replaceitem block ~-4 ~1 ~4 slot.container 10 shroomlight 10
replaceitem block ~-4 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 14 quartz 17
loot insert ~-4 ~1 ~4 loot "rsf/warped_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~4 slot.container 2 string 19
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 gold_nugget 17
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 warped_stem 17
replaceitem block ~4 ~1 ~4 slot.container 10 shroomlight 8
replaceitem block ~4 ~1 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 14 quartz 22
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
loot insert ~4 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
