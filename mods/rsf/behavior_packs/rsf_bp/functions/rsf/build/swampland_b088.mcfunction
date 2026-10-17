# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1624/4224 | 主题内编号: b088/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·矿车铁轨转运仓库 (swampland_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 redstone 11
replaceitem block ~3 ~-3 ~4 slot.container 1 glowstone_dust 10
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 13
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-3 ~4 slot.container 4 slime_ball 17
replaceitem block ~3 ~-3 ~4 slot.container 5 spider_eye 14
replaceitem block ~3 ~-3 ~4 slot.container 9 name_tag 1
replaceitem block ~3 ~-3 ~4 slot.container 10 brewing_stand 5
replaceitem block ~3 ~-3 ~4 slot.container 11 cauldron 6
replaceitem block ~3 ~-3 ~4 slot.container 12 lantern 10
replaceitem block ~3 ~-3 ~4 slot.container 13 glass_bottle 6
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~-3 ~4 loot "rsf/swampland"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 spruce_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 oak_log []
setblock ~0 ~4 ~-5 bookshelf []
setblock ~0 ~5 ~-5 campfire []
fill ~0 ~0 ~5 ~0 ~3 ~5 oak_log []
setblock ~0 ~4 ~5 bookshelf []
setblock ~0 ~5 ~5 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 bookshelf []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 bookshelf []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-5 ~-6 ~-6 ~-5 ~0 ~-6 oak_log []
fill ~-5 ~-6 ~6 ~-5 ~0 ~6 oak_log []
fill ~5 ~-6 ~-6 ~5 ~0 ~-6 oak_log []
fill ~5 ~-6 ~6 ~5 ~0 ~6 oak_log []
setblock ~0 ~1 ~-7 cauldron []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 2 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 4 redstone 14
replaceitem block ~-4 ~1 ~4 slot.container 5 glowstone_dust 13
replaceitem block ~-4 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_cod 9
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 lead 5
replaceitem block ~-4 ~1 ~4 slot.container 13 name_tag 1
replaceitem block ~-4 ~1 ~4 slot.container 14 brewing_stand 6
loot insert ~-4 ~1 ~4 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
