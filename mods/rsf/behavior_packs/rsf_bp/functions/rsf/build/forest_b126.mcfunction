# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0254/4224 | 主题内编号: b126/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子主塔天桥宫殿与暗牢 (forest_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 campfire []
setblock ~4 ~-5 ~-4 campfire []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~4 slot.container 2 string 17
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 5
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-3 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~-3 ~4 slot.container 9 oak_log 20
replaceitem block ~4 ~-3 ~4 slot.container 10 emerald 8
replaceitem block ~4 ~-3 ~4 slot.container 11 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_axe 1
replaceitem block ~4 ~-3 ~4 slot.container 13 bow 1
replaceitem block ~4 ~-3 ~4 slot.container 14 lantern 6
loot insert ~4 ~-3 ~4 loot "rsf/forest"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 stone_bricks []
fill ~2 ~1 ~-6 ~6 ~11 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 moss_block []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 moss_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 bookshelf []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 moss_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~-9 ~-9 ~7 ~-9 spruce_log []
fill ~9 ~0 ~-9 ~9 ~7 ~-9 spruce_log []
fill ~-9 ~7 ~-9 ~9 ~7 ~-9 moss_block []
setblock ~-3 ~8 ~-9 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 slime_ball 10
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 string 12
replaceitem block ~-5 ~1 ~5 slot.container 5 spider_eye 8
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_porkchop 8
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 11 oak_log 20
replaceitem block ~-5 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~-5 ~1 ~5 loot "rsf/forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~5 slot.container 1 bone 14
replaceitem block ~5 ~1 ~5 slot.container 2 string 15
replaceitem block ~5 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~5 slot.container 5 arrow 16
replaceitem block ~5 ~1 ~5 slot.container 9 cooked_porkchop 6
replaceitem block ~5 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~5 slot.container 11 oak_log 18
replaceitem block ~5 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~5 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~5 ~1 ~5 loot "rsf/forest"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-3 ~0
