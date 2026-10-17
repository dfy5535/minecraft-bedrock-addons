# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1568/4224 | 主题内编号: b032/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·断顶残垣古哨塔 (swampland_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 cobblestone [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 cobblestone [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 slime []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 rotten_flesh 14
replaceitem block ~4 ~-2 ~0 slot.container 1 slime_ball 17
replaceitem block ~4 ~-2 ~0 slot.container 2 spider_eye 14
replaceitem block ~4 ~-2 ~0 slot.container 3 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~0 slot.container 4 gunpowder 8
replaceitem block ~4 ~-2 ~0 slot.container 5 redstone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 lead 3
replaceitem block ~4 ~-2 ~0 slot.container 10 name_tag 1
replaceitem block ~4 ~-2 ~0 slot.container 11 brewing_stand 4
replaceitem block ~4 ~-2 ~0 slot.container 12 cauldron 5
replaceitem block ~4 ~-2 ~0 slot.container 13 lantern 9
replaceitem block ~4 ~-2 ~0 slot.container 14 glass_bottle 12
loot insert ~4 ~-2 ~0 loot "rsf/swampland"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~9 ~4 cobblestone []
fill ~-3 ~1 ~-3 ~3 ~8 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~9 ~-4 spruce_log []
fill ~-4 ~1 ~4 ~-4 ~9 ~4 spruce_log []
fill ~4 ~1 ~-4 ~4 ~9 ~-4 spruce_log []
fill ~4 ~1 ~4 ~4 ~9 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 spruce_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-4 ~-6 ~-4 ~-4 ~0 ~-4 oak_log []
fill ~-4 ~-6 ~4 ~-4 ~0 ~4 oak_log []
fill ~4 ~-6 ~-4 ~4 ~0 ~-4 oak_log []
fill ~4 ~-6 ~4 ~4 ~0 ~4 oak_log []
setblock ~1 ~1 ~-5 cauldron []
setblock ~-1 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-3 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-3 ~1 ~2 slot.container 2 fermented_spider_eye 5
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 11
replaceitem block ~-3 ~1 ~2 slot.container 4 redstone 14
replaceitem block ~-3 ~1 ~2 slot.container 5 glowstone_dust 13
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-3 ~1 ~2 slot.container 10 lead 3
replaceitem block ~-3 ~1 ~2 slot.container 11 name_tag 1
replaceitem block ~-3 ~1 ~2 slot.container 12 brewing_stand 4
replaceitem block ~-3 ~1 ~2 slot.container 13 cauldron 5
replaceitem block ~-3 ~1 ~2 slot.container 14 lantern 9
loot insert ~-3 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0
