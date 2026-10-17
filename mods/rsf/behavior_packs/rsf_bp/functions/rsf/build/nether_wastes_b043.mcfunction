# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3499/4224 | 主题内编号: b043/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字四门试炼擂台 (nether_wastes_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 polished_blackstone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 nether_brick []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 polished_blackstone_wall []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 gilded_blackstone []
setblock ~-6 ~8 ~-7 lantern []
setblock ~-6 ~7 ~7 gilded_blackstone []
setblock ~-6 ~8 ~7 lantern []
setblock ~6 ~7 ~-7 gilded_blackstone []
setblock ~6 ~8 ~-7 lantern []
setblock ~6 ~7 ~7 gilded_blackstone []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~8 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~-8 ~0 ~-10 ~-8 ~6 ~-10 nether_brick []
setblock ~-8 ~7 ~-10 magma []
setblock ~-8 ~8 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 19
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 9 netherite_scrap 7
replaceitem block ~5 ~1 ~6 slot.container 10 fire_charge 6
replaceitem block ~5 ~1 ~6 slot.container 11 soul_lantern 5
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 quartz 19
replaceitem block ~5 ~1 ~6 slot.container 14 nether_wart 16
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
