# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1658/4224 | 主题内编号: b122/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字穹顶宏伟圣堂与墓窟 (swampland_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 9 lead 7
replaceitem block ~4 ~-3 ~3 slot.container 10 name_tag 1
replaceitem block ~4 ~-3 ~3 slot.container 11 brewing_stand 1
replaceitem block ~4 ~-3 ~3 slot.container 12 cauldron 2
replaceitem block ~4 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 14 glass_bottle 9
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 spruce_planks []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 spruce_planks []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 oak_fence []
setblock ~7 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 spruce_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 brewing_stand []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-7 ~-7 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-7 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-7 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-7 ~6 ~7 ~0 ~6 oak_log []
setblock ~-3 ~1 ~-7 cauldron []
setblock ~3 ~2 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 2 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 10 lead 2
replaceitem block ~-6 ~1 ~4 slot.container 11 name_tag 1
replaceitem block ~-6 ~1 ~4 slot.container 12 brewing_stand 3
replaceitem block ~-6 ~1 ~4 slot.container 13 cauldron 4
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 8
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-4 ~0
