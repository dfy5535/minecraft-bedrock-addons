# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3922/4224 | 主题内编号: b082/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·竖井井架矿工物资站 (soulsand_valley_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 6格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 blackstone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 soul_campfire []
setblock ~3 ~-7 ~-2 soul_campfire []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 21
replaceitem block ~3 ~-5 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-5 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-5 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-5 ~2 slot.container 4 bone 21
replaceitem block ~3 ~-5 ~2 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-5 ~2 slot.container 9 golden_apple 6
replaceitem block ~3 ~-5 ~2 slot.container 10 soul_lantern 11
replaceitem block ~3 ~-5 ~2 slot.container 11 bone_block 18
replaceitem block ~3 ~-5 ~2 slot.container 12 soul_sand 16
replaceitem block ~3 ~-5 ~2 slot.container 13 soul_soil 17
replaceitem block ~3 ~-5 ~2 slot.container 14 gold_ingot 10
loot insert ~3 ~-5 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-5 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 blackstone_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 polished_blackstone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 bone_block []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 polished_blackstone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 ancient_debris []
setblock ~0 ~12 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_nether_bricks []
setblock ~0 ~4 ~-6 gilded_blackstone []
setblock ~0 ~5 ~-6 soul_campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_nether_bricks []
setblock ~0 ~4 ~6 gilded_blackstone []
setblock ~0 ~5 ~6 soul_campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_nether_bricks []
setblock ~-7 ~4 ~0 gilded_blackstone []
setblock ~-7 ~5 ~0 soul_campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_nether_bricks []
setblock ~7 ~4 ~0 gilded_blackstone []
setblock ~7 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 bone_block []
fill ~-7 ~8 ~-1 ~7 ~8 ~-1 bone_block []
setblock ~0 ~9 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 9 crying_obsidian 8
replaceitem block ~-4 ~1 ~2 slot.container 10 netherite_scrap 4
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 11
replaceitem block ~-4 ~1 ~2 slot.container 13 bone_block 18
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_sand 16
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
