# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3848/4224 | 主题内编号: b008/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·凯旋双拱圣物祭坛 (soulsand_valley_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bone_block [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 bone_block [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 nether_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 nether_brick []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 bone_block []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 polished_blackstone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 nether_brick_fence []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 chiseled_nether_bricks []
setblock ~-6 ~9 ~-4 soul_campfire []
setblock ~-6 ~8 ~4 chiseled_nether_bricks []
setblock ~-6 ~9 ~4 soul_campfire []
setblock ~6 ~8 ~-4 chiseled_nether_bricks []
setblock ~6 ~9 ~-4 soul_campfire []
setblock ~6 ~8 ~4 chiseled_nether_bricks []
setblock ~6 ~9 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 soul_soil []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~2 slot.container 9 quartz 21
replaceitem block ~-5 ~1 ~2 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~2 slot.container 11 crying_obsidian 6
replaceitem block ~-5 ~1 ~2 slot.container 12 netherite_scrap 2
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 14 soul_lantern 9
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~2 ~0
