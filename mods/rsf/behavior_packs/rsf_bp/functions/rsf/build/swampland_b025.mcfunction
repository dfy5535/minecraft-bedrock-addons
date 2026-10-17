# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1561/4224 | 主题内编号: b025/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·雉堞女墙四方哨塔 (swampland_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mud_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 slime []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 spruce_planks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 oak_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 oak_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 spruce_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-4 ~-4 ~-3 ~-4 ~0 ~-3 oak_log []
fill ~-4 ~-4 ~3 ~-4 ~0 ~3 oak_log []
fill ~4 ~-4 ~-3 ~4 ~0 ~-3 oak_log []
fill ~4 ~-4 ~3 ~4 ~0 ~3 oak_log []
setblock ~-2 ~1 ~-4 cauldron []
setblock ~2 ~5 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 1 fermented_spider_eye 5
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~1 slot.container 3 redstone 14
replaceitem block ~3 ~1 ~1 slot.container 4 glowstone_dust 13
replaceitem block ~3 ~1 ~1 slot.container 5 bone 16
replaceitem block ~3 ~1 ~1 slot.container 9 cooked_cod 8
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 7
replaceitem block ~3 ~1 ~1 slot.container 11 lead 4
replaceitem block ~3 ~1 ~1 slot.container 12 name_tag 1
replaceitem block ~3 ~1 ~1 slot.container 13 brewing_stand 5
replaceitem block ~3 ~1 ~1 slot.container 14 cauldron 6
loot insert ~3 ~1 ~1 loot "rsf/swampland"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-3 ~1 ~2 slot.container 1 redstone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 glowstone_dust 8
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 15
replaceitem block ~-3 ~1 ~2 slot.container 9 cooked_cod 13
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 11 lead 2
replaceitem block ~-3 ~1 ~2 slot.container 12 name_tag 1
replaceitem block ~-3 ~1 ~2 slot.container 13 brewing_stand 3
replaceitem block ~-3 ~1 ~2 slot.container 14 cauldron 4
loot insert ~-3 ~1 ~2 loot "rsf/swampland"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
