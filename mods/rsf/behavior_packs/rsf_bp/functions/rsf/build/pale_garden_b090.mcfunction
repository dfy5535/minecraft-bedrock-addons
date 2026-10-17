# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0602/4224 | 主题内编号: b090/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·八角攒尖悬灯神龛 (pale_garden_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 spider_eye 9
replaceitem block ~3 ~-3 ~2 slot.container 1 phantom_membrane 7
replaceitem block ~3 ~-3 ~2 slot.container 2 resin_clump 17
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 5 string 10
replaceitem block ~3 ~-3 ~2 slot.container 9 resin_brick 15
replaceitem block ~3 ~-3 ~2 slot.container 10 pale_oak_log 20
replaceitem block ~3 ~-3 ~2 slot.container 11 pale_oak_sapling 9
replaceitem block ~3 ~-3 ~2 slot.container 12 pale_moss_block 14
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 14 diamond 3
loot insert ~3 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 resin_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 stripped_pale_oak_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 stripped_pale_oak_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 stripped_pale_oak_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 stripped_pale_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 pale_oak_planks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 resin_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 stripped_pale_oak_log []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 stripped_pale_oak_log []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 stripped_pale_oak_log []
fill ~5 ~0 ~2 ~5 ~11 ~2 stripped_pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~1 ~-8 ~5 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~5 ~1 pale_oak_log []
setblock ~-8 ~6 ~1 resin_block []
setblock ~8 ~6 ~1 chiseled_resin_bricks []
setblock ~-8 ~7 ~1 soul_lantern []
setblock ~8 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 13 resin_brick 16
replaceitem block ~-4 ~1 ~2 slot.container 14 pale_oak_log 21
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
