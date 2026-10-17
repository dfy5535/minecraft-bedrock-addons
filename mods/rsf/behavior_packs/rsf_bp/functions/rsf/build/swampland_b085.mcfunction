# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1621/4224 | 主题内编号: b085/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子烟囱砖石窑厂 (swampland_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~6 ~9 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 spruce_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 cauldron []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-6 ~-5 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-5 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-5 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-5 ~4 ~6 ~0 ~4 oak_log []
setblock ~1 ~1 ~-5 cauldron []
setblock ~-1 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 glowstone_dust 13
replaceitem block ~5 ~1 ~2 slot.container 1 bone 16
replaceitem block ~5 ~1 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 5 fermented_spider_eye 5
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_cod 12
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~2 slot.container 11 lead 8
replaceitem block ~5 ~1 ~2 slot.container 12 name_tag 1
replaceitem block ~5 ~1 ~2 slot.container 13 brewing_stand 2
replaceitem block ~5 ~1 ~2 slot.container 14 cauldron 3
loot insert ~5 ~1 ~2 loot "rsf/swampland"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 15
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 redstone 17
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_cod 10
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 11 lead 6
replaceitem block ~-5 ~1 ~3 slot.container 12 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 13 brewing_stand 7
replaceitem block ~-5 ~1 ~3 slot.container 14 cauldron 1
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
