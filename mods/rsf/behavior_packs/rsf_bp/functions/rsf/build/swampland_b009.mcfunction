# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1545/4224 | 主题内编号: b009/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·铁栏双室地下死牢 (swampland_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_planks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 oak_log []
setblock ~-6 ~7 ~-5 lantern []
setblock ~-6 ~6 ~5 oak_log []
setblock ~-6 ~7 ~5 lantern []
setblock ~6 ~6 ~-5 oak_log []
setblock ~6 ~7 ~-5 lantern []
setblock ~6 ~6 ~5 oak_log []
setblock ~6 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~-3 ~1 ~-6 cauldron []
setblock ~3 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 fermented_spider_eye 5
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 3 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 4 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 5 bone 16
replaceitem block ~5 ~1 ~3 slot.container 9 lead 7
replaceitem block ~5 ~1 ~3 slot.container 10 name_tag 1
replaceitem block ~5 ~1 ~3 slot.container 11 brewing_stand 1
replaceitem block ~5 ~1 ~3 slot.container 12 cauldron 2
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~5 ~1 ~3 slot.container 14 glass_bottle 9
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 1 redstone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lead 5
replaceitem block ~-5 ~1 ~4 slot.container 10 name_tag 1
replaceitem block ~-5 ~1 ~4 slot.container 11 brewing_stand 6
replaceitem block ~-5 ~1 ~4 slot.container 12 cauldron 7
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~-5 ~1 ~4 slot.container 14 glass_bottle 7
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
