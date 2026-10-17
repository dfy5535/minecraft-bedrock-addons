# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3336/4224 | 主题内编号: b008/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·凯旋双拱圣物祭坛 (deep_dark_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 sculk []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 deepslate_tiles []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 sculk []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 deepslate_tile_wall []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 polished_deepslate []
setblock ~-6 ~8 ~-4 soul_lantern []
setblock ~-6 ~7 ~4 polished_deepslate []
setblock ~-6 ~8 ~4 soul_lantern []
setblock ~6 ~7 ~-4 polished_deepslate []
setblock ~6 ~8 ~-4 soul_lantern []
setblock ~6 ~7 ~4 polished_deepslate []
setblock ~6 ~8 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~4 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~1 ~0 ~7 ~3 ~4 ~7 chiseled_deepslate []
setblock ~2 ~1 ~7 sculk_catalyst []
setblock ~2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 echo_shard 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 5
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~-5 ~1 ~2 slot.container 10 soul_lantern 11
replaceitem block ~-5 ~1 ~2 slot.container 11 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 13 experience_bottle 13
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond 6
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
