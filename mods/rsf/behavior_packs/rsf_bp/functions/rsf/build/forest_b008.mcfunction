# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0136/4224 | 主题内编号: b008/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·凯旋双拱圣物祭坛 (forest_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 5
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 arrow 18
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~5 slot.container 12 lantern 4
replaceitem block ~0 ~-4 ~5 slot.container 13 honey_bottle 5
replaceitem block ~0 ~-4 ~5 slot.container 14 sweet_berries 12
loot insert ~0 ~-4 ~5 loot "rsf/forest"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 16
replaceitem block ~0 ~-4 ~-5 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 honey_bottle 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 sweet_berries 11
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 cobblestone_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 oak_log []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 oak_log []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 oak_log []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 oak_log []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
fill ~-8 ~4 ~-7 ~8 ~4 ~-7 moss_block []
setblock ~2 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~4 slot.container 11 honey_bottle 9
replaceitem block ~-4 ~1 ~4 slot.container 12 sweet_berries 16
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_porkchop 6
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-4 ~1 ~4 loot "rsf/forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 15
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 16
replaceitem block ~4 ~1 ~4 slot.container 4 slime_ball 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 bow 1
replaceitem block ~4 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~4 slot.container 11 honey_bottle 7
replaceitem block ~4 ~1 ~4 slot.container 12 sweet_berries 14
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_porkchop 11
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~4 loot "rsf/forest"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
