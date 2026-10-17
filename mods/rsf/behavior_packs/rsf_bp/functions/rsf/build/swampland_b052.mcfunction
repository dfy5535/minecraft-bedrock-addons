# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1588/4224 | 主题内编号: b052/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·重檐行商旅店客栈 (swampland_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~0 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~3 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~3 slot.container 13 brewing_stand 2
replaceitem block ~0 ~-3 ~3 slot.container 14 cauldron 3
loot insert ~0 ~-3 ~3 loot "rsf/swampland"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 cobblestone []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 spruce_slab []
fill ~-5 ~4 ~-5 ~5 ~7 ~5 mossy_stone_bricks []
fill ~-4 ~4 ~-4 ~4 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-7 ~7 ~7 ~7 spruce_slab []
fill ~-5 ~8 ~-5 ~5 ~9 ~5 mossy_stone_bricks []
fill ~-6 ~10 ~-6 ~6 ~10 ~6 spruce_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 spruce_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-6 ~-6 ~-6 ~-6 ~0 ~-6 oak_log []
fill ~-6 ~-6 ~6 ~-6 ~0 ~6 oak_log []
fill ~6 ~-6 ~-6 ~6 ~0 ~-6 oak_log []
fill ~6 ~-6 ~6 ~6 ~0 ~6 oak_log []
setblock ~-2 ~1 ~-7 cauldron []
setblock ~2 ~2 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 redstone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 glowstone_dust 13
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 10 lead 2
replaceitem block ~-5 ~1 ~4 slot.container 11 name_tag 1
replaceitem block ~-5 ~1 ~4 slot.container 12 brewing_stand 3
replaceitem block ~-5 ~1 ~4 slot.container 13 cauldron 4
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 8
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
