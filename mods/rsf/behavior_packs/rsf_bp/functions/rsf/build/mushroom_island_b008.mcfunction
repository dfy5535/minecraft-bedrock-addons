# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2952/4224 | 主题内编号: b008/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·凯旋双拱圣物祭坛 (mushroom_island_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mycelium []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 red_mushroom_block []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone_wall []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 mushroom_stem []
setblock ~-5 ~8 ~-5 lantern []
setblock ~-5 ~7 ~5 mushroom_stem []
setblock ~-5 ~8 ~5 lantern []
setblock ~5 ~7 ~-5 mushroom_stem []
setblock ~5 ~8 ~-5 lantern []
setblock ~5 ~7 ~5 mushroom_stem []
setblock ~5 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~0 ~1 ~6 ~6 ~1 mushroom_stem []
fill ~5 ~7 ~0 ~7 ~7 ~2 red_mushroom_block []
setblock ~6 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 13
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 13
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 11 bowl 6
replaceitem block ~-4 ~1 ~4 slot.container 12 shroomlight 5
replaceitem block ~-4 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~-4 ~1 ~4 loot "rsf/mushroom_island"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 1 string 16
replaceitem block ~4 ~1 ~4 slot.container 2 spider_eye 15
replaceitem block ~4 ~1 ~4 slot.container 3 slime_ball 8
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~4 slot.container 5 blaze_rod 4
replaceitem block ~4 ~1 ~4 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 11 bowl 11
replaceitem block ~4 ~1 ~4 slot.container 12 shroomlight 10
replaceitem block ~4 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
