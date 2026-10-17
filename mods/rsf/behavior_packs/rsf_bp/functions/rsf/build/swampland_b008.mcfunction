# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1544/4224 | 主题内编号: b008/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·凯旋双拱圣物祭坛 (swampland_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 spruce_planks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_fence []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 spruce_log []
setblock ~-6 ~9 ~-4 soul_lantern []
setblock ~-6 ~8 ~4 spruce_log []
setblock ~-6 ~9 ~4 soul_lantern []
setblock ~6 ~8 ~-4 spruce_log []
setblock ~6 ~9 ~-4 soul_lantern []
setblock ~6 ~8 ~4 spruce_log []
setblock ~6 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~4 ~-6 oak_log []
setblock ~-9 ~5 ~-6 campfire []
fill ~-9 ~0 ~6 ~-9 ~4 ~6 oak_log []
setblock ~-9 ~5 ~6 campfire []
fill ~9 ~0 ~-6 ~9 ~4 ~-6 oak_log []
setblock ~9 ~5 ~-6 campfire []
fill ~9 ~0 ~6 ~9 ~4 ~6 oak_log []
setblock ~9 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-6 ~-5 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-5 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-5 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-5 ~4 ~6 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~3 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 2 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 4 redstone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 glowstone_dust 13
replaceitem block ~-5 ~1 ~2 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_cod 13
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 12 lead 2
replaceitem block ~-5 ~1 ~2 slot.container 13 name_tag 1
replaceitem block ~-5 ~1 ~2 slot.container 14 brewing_stand 3
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~2 ~0
