# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1468/4224 | 主题内编号: b060/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·圆形穹顶万骨祠堂 (mesa_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_terracotta [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_terracotta [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 string 19
replaceitem block ~0 ~-3 ~4 slot.container 1 spider_eye 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 11
replaceitem block ~0 ~-3 ~4 slot.container 3 gold_nugget 18
replaceitem block ~0 ~-3 ~4 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 tnt 8
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 11 minecart 1
replaceitem block ~0 ~-3 ~4 slot.container 12 lantern 4
replaceitem block ~0 ~-3 ~4 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 14 raw_gold 10
loot insert ~0 ~-3 ~4 loot "rsf/mesa"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 tnt 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 minecart 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 raw_gold 9
loot insert ~0 ~-3 ~-4 loot "rsf/mesa"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 yellow_terracotta []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 chiseled_red_sandstone []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 chiseled_red_sandstone []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 chiseled_red_sandstone []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 chiseled_red_sandstone []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 chiseled_red_sandstone []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 chiseled_red_sandstone []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 chiseled_red_sandstone []
fill ~1 ~1 ~6 ~1 ~5 ~6 chiseled_red_sandstone []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 chiseled_red_sandstone []
fill ~3 ~1 ~6 ~3 ~5 ~6 chiseled_red_sandstone []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 chiseled_red_sandstone []
fill ~5 ~1 ~6 ~5 ~5 ~6 chiseled_red_sandstone []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 chiseled_red_sandstone []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 chiseled_red_sandstone []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 chiseled_red_sandstone []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 chiseled_red_sandstone []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 chiseled_red_sandstone []
fill ~5 ~1 ~0 ~5 ~5 ~0 chiseled_red_sandstone []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 chiseled_red_sandstone []
fill ~5 ~1 ~2 ~5 ~5 ~2 chiseled_red_sandstone []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 chiseled_red_sandstone []
fill ~5 ~1 ~4 ~5 ~5 ~4 chiseled_red_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 yellow_terracotta []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_red_sandstone []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_red_sandstone []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_red_sandstone []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_red_sandstone []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-1 ~1 ~-8 gold_block []
setblock ~-2 ~4 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_beef 14
replaceitem block ~-4 ~1 ~5 slot.container 11 tnt 4
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 13 minecart 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 14
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_beef 12
replaceitem block ~4 ~1 ~5 slot.container 11 tnt 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 13 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 5
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
