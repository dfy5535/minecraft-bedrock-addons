# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1555/4224 | 主题内编号: b019/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·琉璃穹顶圣物秘室 (swampland_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 spider_eye 14
replaceitem block ~4 ~-3 ~4 slot.container 1 fermented_spider_eye 10
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 8
replaceitem block ~4 ~-3 ~4 slot.container 3 redstone 11
replaceitem block ~4 ~-3 ~4 slot.container 4 glowstone_dust 10
replaceitem block ~4 ~-3 ~4 slot.container 5 bone 13
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_cod 9
replaceitem block ~4 ~-3 ~4 slot.container 10 iron_ingot 8
replaceitem block ~4 ~-3 ~4 slot.container 11 lead 5
replaceitem block ~4 ~-3 ~4 slot.container 12 name_tag 1
replaceitem block ~4 ~-3 ~4 slot.container 13 brewing_stand 6
replaceitem block ~4 ~-3 ~4 slot.container 14 cauldron 7
loot insert ~4 ~-3 ~4 loot "rsf/swampland"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mud_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-5 ~-5 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-5 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-5 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-5 ~4 ~5 ~0 ~4 oak_log []
setblock ~1 ~1 ~-5 cauldron []
setblock ~-1 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~2 slot.container 1 redstone 14
replaceitem block ~4 ~1 ~2 slot.container 2 glowstone_dust 13
replaceitem block ~4 ~1 ~2 slot.container 3 bone 16
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~2 slot.container 5 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 9 lead 3
replaceitem block ~4 ~1 ~2 slot.container 10 name_tag 1
replaceitem block ~4 ~1 ~2 slot.container 11 brewing_stand 4
replaceitem block ~4 ~1 ~2 slot.container 12 cauldron 5
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 14 glass_bottle 12
loot insert ~4 ~1 ~2 loot "rsf/swampland"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 glowstone_dust 8
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 3 slime_ball 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 9 lead 8
replaceitem block ~-4 ~1 ~3 slot.container 10 name_tag 1
replaceitem block ~-4 ~1 ~3 slot.container 11 brewing_stand 2
replaceitem block ~-4 ~1 ~3 slot.container 12 cauldron 3
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 14 glass_bottle 10
loot insert ~-4 ~1 ~3 loot "rsf/swampland"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
