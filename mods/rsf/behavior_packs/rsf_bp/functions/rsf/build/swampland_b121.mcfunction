# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1657/4224 | 主题内编号: b121/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·卫城廊柱王座大殿与地宫 (swampland_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-3 ~4 slot.container 1 slime_ball 17
replaceitem block ~0 ~-3 ~4 slot.container 2 spider_eye 14
replaceitem block ~0 ~-3 ~4 slot.container 3 fermented_spider_eye 10
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~4 slot.container 5 redstone 11
replaceitem block ~0 ~-3 ~4 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~4 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~4 slot.container 13 brewing_stand 2
replaceitem block ~0 ~-3 ~4 slot.container 14 cauldron 3
loot insert ~0 ~-3 ~4 loot "rsf/swampland"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 slime_ball 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 fermented_spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 redstone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_cod 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 lead 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 brewing_stand 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 cauldron 2
loot insert ~0 ~-3 ~-4 loot "rsf/swampland"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 oak_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 oak_log []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 spruce_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mud_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 slime []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-7 ~-6 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-6 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-6 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-6 ~6 ~7 ~0 ~6 oak_log []
setblock ~3 ~1 ~-7 cauldron []
setblock ~-3 ~6 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 cauldron []
setblock ~0 ~1 ~0 brewing_stand []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 fermented_spider_eye 5
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~6 ~1 ~4 slot.container 3 redstone 14
replaceitem block ~6 ~1 ~4 slot.container 4 glowstone_dust 13
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_cod 8
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 13 lead 4
replaceitem block ~6 ~1 ~4 slot.container 14 name_tag 1
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~5 slot.container 1 redstone 17
replaceitem block ~-6 ~1 ~5 slot.container 2 glowstone_dust 8
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~5 slot.container 5 slime_ball 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_cod 13
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 13 lead 2
replaceitem block ~-6 ~1 ~5 slot.container 14 name_tag 1
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
