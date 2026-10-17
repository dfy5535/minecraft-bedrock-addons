# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1466/4224 | 主题内编号: b058/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·十字拱顶家族陵墓 (mesa_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_sandstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cut_red_sandstone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 red_sandstone []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 red_sandstone []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 red_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 red_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 red_sandstone_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 cut_red_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 chiseled_red_sandstone []
setblock ~-7 ~4 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 chiseled_red_sandstone []
setblock ~-7 ~4 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 chiseled_red_sandstone []
setblock ~7 ~4 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~3 ~8 chiseled_red_sandstone []
setblock ~7 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~2 ~1 ~-9 gold_block []
setblock ~-2 ~2 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 minecart 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 12 raw_gold 14
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 14 rail 17
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 16
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 12 raw_gold 12
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 14 rail 22
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
