# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1465/4224 | 主题内编号: b057/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·中央石棺帝王地下陵寝 (mesa_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cut_red_sandstone [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cut_red_sandstone [] replace water
fill ~-6 ~1 ~-8 ~6 ~6 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gold_nugget 18
replaceitem block ~0 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~4 slot.container 5 string 19
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 10
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 11 raw_gold 9
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-4 ~4 slot.container 13 rail 19
replaceitem block ~0 ~-4 ~4 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~4 loot "rsf/mesa"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-4 ~-4 slot.container 9 lantern 9
replaceitem block ~0 ~-4 ~-4 slot.container 10 gold_ingot 16
replaceitem block ~0 ~-4 ~-4 slot.container 11 raw_gold 8
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_ingot 7
replaceitem block ~0 ~-4 ~-4 slot.container 13 rail 18
replaceitem block ~0 ~-4 ~-4 slot.container 14 golden_apple 5
loot insert ~0 ~-4 ~-4 loot "rsf/mesa"
loot insert ~0 ~-4 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 cut_red_sandstone []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 hardened_clay []
fill ~0 ~1 ~-7 ~0 ~2 ~7 hardened_clay []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 hardened_clay []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 red_sandstone []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 emerald_block []
setblock ~0 ~8 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 hardened_clay []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 dark_oak_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 dark_oak_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 red_sandstone_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~1 ~1 ~-9 gold_block []
setblock ~-2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 14
replaceitem block ~4 ~1 ~6 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~6 slot.container 4 gold_nugget 21
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_beef 10
replaceitem block ~4 ~1 ~6 slot.container 10 tnt 7
replaceitem block ~4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 12 minecart 1
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~6 slot.container 14 gold_ingot 10
loot insert ~4 ~1 ~6 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
