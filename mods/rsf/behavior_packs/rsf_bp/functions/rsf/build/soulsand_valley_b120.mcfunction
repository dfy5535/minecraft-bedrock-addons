# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3960/4224 | 主题内编号: b120/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·引水渠跨桥水培温室 (soulsand_valley_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~9 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~9 ~6 air [] replace fire
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 bone_block [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 bone_block [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 nether_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 nether_brick []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 coal 16
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 21
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 4 wither_skeleton_skull 5
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 21
replaceitem block ~4 ~-3 ~3 slot.container 9 soul_lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 10 bone_block 14
replaceitem block ~4 ~-3 ~3 slot.container 11 soul_sand 19
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_soil 20
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 13
replaceitem block ~4 ~-3 ~3 slot.container 14 quartz 22
loot insert ~4 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 bone_block []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 polished_blackstone_bricks []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 glass []
fill ~-4 ~7 ~-2 ~4 ~7 ~2 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~1 ~-8 ~5 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~5 ~1 bone_block []
fill ~-8 ~6 ~1 ~8 ~6 ~1 bone_block []
setblock ~0 ~7 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~2 slot.container 9 bone_block 17
replaceitem block ~-5 ~1 ~2 slot.container 10 soul_sand 22
replaceitem block ~-5 ~1 ~2 slot.container 11 soul_soil 16
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 13 quartz 18
replaceitem block ~-5 ~1 ~2 slot.container 14 obsidian 11
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
