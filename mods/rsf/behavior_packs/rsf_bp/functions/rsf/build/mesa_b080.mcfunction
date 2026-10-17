# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1488/4224 | 主题内编号: b080/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·悬灯祈福图腾花坛 (mesa_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_terracotta [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_terracotta [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 red_terracotta []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 red_sandstone_slab []
fill ~-3 ~4 ~-4 ~3 ~6 ~4 cut_red_sandstone []
fill ~-2 ~4 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 red_sandstone_slab []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 cut_red_sandstone []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 red_sandstone_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_red_sandstone []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_red_sandstone []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_red_sandstone []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_red_sandstone []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-2 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 14
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 13
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 10
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 17
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 8
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 4
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
