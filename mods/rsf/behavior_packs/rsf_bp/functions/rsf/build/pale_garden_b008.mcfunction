# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0520/4224 | 主题内编号: b008/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·凯旋双拱圣物祭坛 (pale_garden_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 pale_oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 resin_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 pale_oak_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 resin_brick_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 pale_oak_log []
setblock ~-6 ~10 ~-4 soul_lantern []
setblock ~-6 ~9 ~4 pale_oak_log []
setblock ~-6 ~10 ~4 soul_lantern []
setblock ~6 ~9 ~-4 pale_oak_log []
setblock ~6 ~10 ~-4 soul_lantern []
setblock ~6 ~9 ~4 pale_oak_log []
setblock ~6 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-1 ~-9 ~8 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~8 ~-1 pale_oak_log []
setblock ~-9 ~9 ~-1 resin_block []
setblock ~9 ~9 ~-1 chiseled_resin_bricks []
setblock ~-9 ~10 ~-1 soul_lantern []
setblock ~9 ~10 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 resin_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 resin_clump 12
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 string 13
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 9 resin_brick 14
replaceitem block ~-5 ~1 ~2 slot.container 10 pale_oak_log 19
replaceitem block ~-5 ~1 ~2 slot.container 11 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~2 slot.container 12 pale_moss_block 13
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond 2
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
