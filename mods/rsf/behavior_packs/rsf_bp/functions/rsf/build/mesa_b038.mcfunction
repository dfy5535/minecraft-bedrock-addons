# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1446/4224 | 主题内编号: b038/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·四方凯旋衣冠冢 (mesa_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 string 19
replaceitem block ~3 ~-2 ~0 slot.container 1 spider_eye 8
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 11
replaceitem block ~3 ~-2 ~0 slot.container 3 gold_nugget 18
replaceitem block ~3 ~-2 ~0 slot.container 4 arrow 19
replaceitem block ~3 ~-2 ~0 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-2 ~0 slot.container 10 rail 20
replaceitem block ~3 ~-2 ~0 slot.container 11 golden_apple 7
replaceitem block ~3 ~-2 ~0 slot.container 12 cooked_beef 14
replaceitem block ~3 ~-2 ~0 slot.container 13 tnt 4
replaceitem block ~3 ~-2 ~0 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-2 ~0 loot "rsf/mesa"
loot insert ~3 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 red_sandstone []
fill ~-4 ~1 ~-2 ~4 ~7 ~2 red_sandstone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 dark_oak_fence []
setblock ~4 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 cut_red_sandstone []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 hardened_clay []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 cut_red_sandstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_red_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_red_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 red_sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x2) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~0 ~1 ~-9 gold_block []
setblock ~-2 ~2 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 9 minecart 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 12 raw_gold 8
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 14 rail 18
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 16
replaceitem block ~3 ~1 ~4 slot.container 9 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 12 raw_gold 13
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 14 rail 16
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
