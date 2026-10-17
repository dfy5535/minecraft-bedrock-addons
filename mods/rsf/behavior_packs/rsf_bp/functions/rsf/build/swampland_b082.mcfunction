# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1618/4224 | 主题内编号: b082/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·竖井井架矿工物资站 (swampland_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 6格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 torch []
setblock ~5 ~-7 ~0 torch []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 slime_ball 17
replaceitem block ~0 ~-5 ~4 slot.container 1 spider_eye 14
replaceitem block ~0 ~-5 ~4 slot.container 2 fermented_spider_eye 10
replaceitem block ~0 ~-5 ~4 slot.container 3 gunpowder 8
replaceitem block ~0 ~-5 ~4 slot.container 4 redstone 11
replaceitem block ~0 ~-5 ~4 slot.container 5 glowstone_dust 10
replaceitem block ~0 ~-5 ~4 slot.container 9 glass_bottle 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-5 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-5 ~4 slot.container 12 cooked_cod 9
replaceitem block ~0 ~-5 ~4 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 14 lead 5
loot insert ~0 ~-5 ~4 loot "rsf/swampland"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 slime_ball 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 spider_eye 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 fermented_spider_eye 8
replaceitem block ~0 ~-5 ~-4 slot.container 3 gunpowder 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 redstone 17
replaceitem block ~0 ~-5 ~-4 slot.container 5 glowstone_dust 8
replaceitem block ~0 ~-5 ~-4 slot.container 9 glass_bottle 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 6
replaceitem block ~0 ~-5 ~-4 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 cooked_cod 8
replaceitem block ~0 ~-5 ~-4 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-5 ~-4 slot.container 14 lead 4
loot insert ~0 ~-5 ~-4 loot "rsf/swampland"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 spruce_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 mud_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_cobblestone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 brewing_stand []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 packed_mud []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-5 ~-8 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-8 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-8 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-8 ~4 ~5 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 2 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 10 lead 4
replaceitem block ~-4 ~1 ~2 slot.container 11 name_tag 1
replaceitem block ~-4 ~1 ~2 slot.container 12 brewing_stand 5
replaceitem block ~-4 ~1 ~2 slot.container 13 cauldron 6
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 10
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
