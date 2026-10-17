# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1443/4224 | 主题内编号: b035/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·巨石垒砌古战石冢 (mesa_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 1 string 19
replaceitem block ~0 ~-4 ~3 slot.container 2 spider_eye 8
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 11
replaceitem block ~0 ~-4 ~3 slot.container 4 gold_nugget 18
replaceitem block ~0 ~-4 ~3 slot.container 5 arrow 19
replaceitem block ~0 ~-4 ~3 slot.container 9 raw_gold 8
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-4 ~3 slot.container 11 rail 18
replaceitem block ~0 ~-4 ~3 slot.container 12 golden_apple 5
replaceitem block ~0 ~-4 ~3 slot.container 13 cooked_beef 12
replaceitem block ~0 ~-4 ~3 slot.container 14 tnt 9
loot insert ~0 ~-4 ~3 loot "rsf/mesa"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 spider_eye 14
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 gold_nugget 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 raw_gold 14
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-4 ~-3 slot.container 11 rail 17
replaceitem block ~0 ~-4 ~-3 slot.container 12 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_beef 11
replaceitem block ~0 ~-4 ~-3 slot.container 14 tnt 8
loot insert ~0 ~-4 ~-3 loot "rsf/mesa"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 orange_terracotta []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 red_terracotta []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 raw_gold_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 dark_oak_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 dark_oak_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 dark_oak_log []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 dark_oak_log []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~1 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 21
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 11 raw_gold 11
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 rail 21
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
