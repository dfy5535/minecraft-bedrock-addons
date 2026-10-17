# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0648/4224 | 主题内编号: b008/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·凯旋双拱圣物祭坛 (taiga_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 spruce_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 spruce_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 spruce_planks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 mossy_cobblestone []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 spruce_fence []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 spruce_log []
setblock ~-5 ~8 ~-5 lantern []
setblock ~-5 ~7 ~5 spruce_log []
setblock ~-5 ~8 ~5 lantern []
setblock ~5 ~7 ~-5 spruce_log []
setblock ~5 ~8 ~-5 lantern []
setblock ~5 ~7 ~5 spruce_log []
setblock ~5 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 spruce_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 spruce_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 spruce_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 spruce_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 spruce_fence []
fill ~-2 ~8 ~-7 ~0 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 10 coal 17
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 13 campfire 3
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 6
loot insert ~-4 ~1 ~4 loot "rsf/taiga"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~4 ~1 ~4 slot.container 4 leather 7
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 10 coal 15
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 13 campfire 8
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 4
loot insert ~4 ~1 ~4 loot "rsf/taiga"
loot insert ~4 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
