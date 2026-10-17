# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0679/4224 | 主题内编号: b039/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·永恒圣火图腾方尖塔 (taiga_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 spruce_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~3 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-4 ~4 slot.container 9 lantern 4
replaceitem block ~3 ~-4 ~4 slot.container 10 sweet_berries 13
replaceitem block ~3 ~-4 ~4 slot.container 11 cooked_rabbit 8
replaceitem block ~3 ~-4 ~4 slot.container 12 cooked_salmon 9
replaceitem block ~3 ~-4 ~4 slot.container 13 spruce_log 20
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_ingot 11
loot insert ~3 ~-4 ~4 loot "rsf/taiga"
loot insert ~3 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 spruce_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 iron_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 spruce_log []
setblock ~-5 ~4 ~0 chiseled_stone_bricks []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 spruce_log []
setblock ~5 ~4 ~0 chiseled_stone_bricks []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x5x2) ---
fill ~-2 ~0 ~-4 ~0 ~0 ~-5 mossy_cobblestone []
setblock ~-1 ~1 ~-5 campfire []
fill ~-2 ~1 ~-4 ~-2 ~3 ~-4 spruce_fence []
fill ~0 ~1 ~-4 ~0 ~3 ~-4 spruce_fence []
fill ~-2 ~4 ~-4 ~0 ~4 ~-5 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 bone 10
replaceitem block ~2 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 11
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 10 campfire 3
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~2 ~1 ~3 slot.container 12 sweet_berries 15
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_rabbit 10
replaceitem block ~2 ~1 ~3 slot.container 14 cooked_salmon 11
loot insert ~2 ~1 ~3 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
