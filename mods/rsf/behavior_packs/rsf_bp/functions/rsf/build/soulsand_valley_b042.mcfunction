# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3882/4224 | 主题内编号: b042/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·地底铁栏死斗深坑 (soulsand_valley_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 soul_campfire []
setblock ~4 ~-6 ~-3 soul_campfire []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 arrow 21
replaceitem block ~4 ~-4 ~3 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-4 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~-4 ~3 slot.container 3 wither_skeleton_skull 5
replaceitem block ~4 ~-4 ~3 slot.container 4 bone 21
replaceitem block ~4 ~-4 ~3 slot.container 5 ghast_tear 12
replaceitem block ~4 ~-4 ~3 slot.container 9 golden_apple 8
replaceitem block ~4 ~-4 ~3 slot.container 10 soul_lantern 6
replaceitem block ~4 ~-4 ~3 slot.container 11 bone_block 13
replaceitem block ~4 ~-4 ~3 slot.container 12 soul_sand 18
replaceitem block ~4 ~-4 ~3 slot.container 13 soul_soil 19
replaceitem block ~4 ~-4 ~3 slot.container 14 gold_ingot 12
loot insert ~4 ~-4 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-4 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bone_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 bone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 chiseled_polished_blackstone []
setblock ~-6 ~8 ~-5 soul_campfire []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 chiseled_polished_blackstone []
setblock ~-6 ~8 ~5 soul_campfire []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 chiseled_polished_blackstone []
setblock ~6 ~8 ~-5 soul_campfire []
fill ~6 ~5 ~5 ~6 ~7 ~5 chiseled_polished_blackstone []
setblock ~6 ~8 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 basalt []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 basalt []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 basalt []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 basalt []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~7 ~0 bone_block []
fill ~-8 ~8 ~0 ~8 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 9 crying_obsidian 10
replaceitem block ~-5 ~1 ~3 slot.container 10 netherite_scrap 6
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 13 bone_block 13
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_sand 18
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
