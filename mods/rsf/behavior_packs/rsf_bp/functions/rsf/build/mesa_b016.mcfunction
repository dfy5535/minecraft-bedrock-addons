# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1424/4224 | 主题内编号: b016/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·要塞地底重装暗牢 (mesa_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_terracotta [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_terracotta [] replace water
fill ~-7 ~1 ~-8 ~7 ~7 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_terracotta []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 campfire []
setblock ~4 ~-5 ~0 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 string 19
replaceitem block ~0 ~-3 ~5 slot.container 5 spider_eye 8
replaceitem block ~0 ~-3 ~5 slot.container 9 golden_apple 4
replaceitem block ~0 ~-3 ~5 slot.container 10 cooked_beef 11
replaceitem block ~0 ~-3 ~5 slot.container 11 tnt 8
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 13 minecart 1
replaceitem block ~0 ~-3 ~5 slot.container 14 lantern 4
loot insert ~0 ~-3 ~5 loot "rsf/mesa"
loot insert ~0 ~-3 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 string 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 spider_eye 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~-5 slot.container 10 cooked_beef 10
replaceitem block ~0 ~-3 ~-5 slot.container 11 tnt 7
replaceitem block ~0 ~-3 ~-5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 minecart 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 lantern 10
loot insert ~0 ~-3 ~-5 loot "rsf/mesa"
loot insert ~0 ~-3 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 red_terracotta []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 yellow_terracotta []
setblock ~-6 ~8 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 yellow_terracotta []
setblock ~-6 ~8 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 yellow_terracotta []
setblock ~5 ~8 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~7 ~7 yellow_terracotta []
setblock ~5 ~8 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 yellow_terracotta []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobblestone_wall []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 chiseled_red_sandstone []
setblock ~-6 ~7 ~-7 campfire []
setblock ~-6 ~6 ~7 chiseled_red_sandstone []
setblock ~-6 ~7 ~7 campfire []
setblock ~6 ~6 ~-7 chiseled_red_sandstone []
setblock ~6 ~7 ~-7 campfire []
setblock ~6 ~6 ~7 chiseled_red_sandstone []
setblock ~6 ~7 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~1 ~1 ~-10 gold_block []
setblock ~-2 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~6 slot.container 5 gold_nugget 21
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 10 rail 20
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~6 slot.container 12 cooked_beef 14
replaceitem block ~-5 ~1 ~6 slot.container 13 tnt 4
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~6 loot "rsf/mesa"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 16
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 10 rail 18
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_beef 12
replaceitem block ~5 ~1 ~6 slot.container 13 tnt 9
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/mesa"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
