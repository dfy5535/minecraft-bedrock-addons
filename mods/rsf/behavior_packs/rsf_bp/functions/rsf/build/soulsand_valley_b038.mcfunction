# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3878/4224 | 主题内编号: b038/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·四方凯旋衣冠冢 (soulsand_valley_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bone_block []
setblock ~0 ~-6 ~0 crying_obsidian []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_campfire []
setblock ~2 ~-5 ~0 soul_campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 21
replaceitem block ~0 ~-3 ~-2 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-3 ~-2 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-3 ~-2 slot.container 3 coal 16
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 21
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 bone_block 15
replaceitem block ~0 ~-3 ~-2 slot.container 10 soul_sand 20
replaceitem block ~0 ~-3 ~-2 slot.container 11 soul_soil 21
replaceitem block ~0 ~-3 ~-2 slot.container 12 gold_ingot 14
replaceitem block ~0 ~-3 ~-2 slot.container 13 quartz 16
replaceitem block ~0 ~-3 ~-2 slot.container 14 obsidian 9
loot insert ~0 ~-3 ~-2 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~8 ~4 blackstone []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 blackstone []
fill ~-1 ~1 ~-3 ~1 ~7 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blackstone []
fill ~0 ~15 ~0 ~0 ~18 ~0 ancient_debris []
setblock ~0 ~19 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bone_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_polished_blackstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_polished_blackstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 blackstone_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~8 ~-1 bone_block []
fill ~-7 ~9 ~-1 ~7 ~9 ~-1 bone_block []
setblock ~0 ~10 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 ancient_debris []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 9 quartz 16
replaceitem block ~-4 ~1 ~2 slot.container 10 obsidian 9
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 8
replaceitem block ~-4 ~1 ~2 slot.container 12 netherite_scrap 4
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 11
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0
