# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3479/4224 | 主题内编号: b023/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双层露台阁楼宝室 (nether_wastes_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~11 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~11 ~8 air [] replace fire
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 blackstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 polished_blackstone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 polished_blackstone_brick_slab []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 red_nether_brick []
fill ~-2 ~5 ~-4 ~2 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-7 ~5 ~8 ~7 polished_blackstone_brick_slab []
fill ~-3 ~9 ~-5 ~3 ~10 ~5 red_nether_brick []
fill ~-4 ~11 ~-6 ~4 ~11 ~6 red_nether_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~-7 ~-6 ~6 ~-7 nether_brick []
setblock ~-6 ~7 ~-7 magma []
setblock ~-6 ~8 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 coal 19
replaceitem block ~3 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~3 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~5 slot.container 9 netherite_scrap 1
replaceitem block ~3 ~1 ~5 slot.container 10 fire_charge 7
replaceitem block ~3 ~1 ~5 slot.container 11 soul_lantern 6
replaceitem block ~3 ~1 ~5 slot.container 12 gold_ingot 13
replaceitem block ~3 ~1 ~5 slot.container 13 quartz 20
replaceitem block ~3 ~1 ~5 slot.container 14 nether_wart 17
loot insert ~3 ~1 ~5 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
