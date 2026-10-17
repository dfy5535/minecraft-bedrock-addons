# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0697/4224 | 主题内编号: b057/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·中央石棺帝王地下陵寝 (taiga_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~8 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cobblestone []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 spruce_planks []
setblock ~0 ~-7 ~0 bookshelf []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 string 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 rabbit_hide 8
replaceitem block ~0 ~-4 ~-5 slot.container 3 leather 9
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 campfire 3
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 sweet_berries 15
replaceitem block ~0 ~-4 ~-5 slot.container 13 cooked_rabbit 10
replaceitem block ~0 ~-4 ~-5 slot.container 14 cooked_salmon 11
loot insert ~0 ~-4 ~-5 loot "rsf/taiga"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 mossy_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 spruce_planks []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 cobblestone []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 barrel []
setblock ~0 ~8 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-3 ~0 ~-7 ~-1 ~0 ~-8 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 spruce_fence []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 spruce_fence []
fill ~-3 ~7 ~-7 ~-1 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~6 slot.container 4 rabbit_hide 11
replaceitem block ~4 ~1 ~6 slot.container 5 leather 12
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_rabbit 10
replaceitem block ~4 ~1 ~6 slot.container 10 cooked_salmon 11
replaceitem block ~4 ~1 ~6 slot.container 11 spruce_log 22
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~6 slot.container 13 coal 13
replaceitem block ~4 ~1 ~6 slot.container 14 emerald 5
loot insert ~4 ~1 ~6 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
