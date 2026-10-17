# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3962/4224 | 主题内编号: b122/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字穹顶宏伟圣堂与墓窟 (soulsand_valley_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 bone_block []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 blackstone []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 blackstone []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 polished_blackstone_wall []
setblock ~7 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blackstone []
fill ~0 ~15 ~0 ~0 ~18 ~0 ancient_debris []
setblock ~0 ~19 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 chiseled_polished_blackstone []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 chiseled_polished_blackstone []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 chiseled_polished_blackstone []
fill ~8 ~0 ~2 ~8 ~8 ~2 chiseled_polished_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-2 ~-9 ~7 ~-2 bone_block []
fill ~9 ~0 ~-2 ~9 ~7 ~-2 bone_block []
fill ~-9 ~8 ~-2 ~9 ~8 ~-2 bone_block []
setblock ~0 ~9 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~4 slot.container 9 crying_obsidian 6
replaceitem block ~-6 ~1 ~4 slot.container 10 netherite_scrap 2
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 12 soul_lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 13 bone_block 16
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_sand 21
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-4 ~0
