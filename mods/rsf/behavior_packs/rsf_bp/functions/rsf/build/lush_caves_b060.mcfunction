# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3132/4224 | 主题内编号: b060/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·圆形穹顶万骨祠堂 (lush_caves_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 string 17
replaceitem block ~0 ~-4 ~3 slot.container 1 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 2 bone 11
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-4 ~3 slot.container 4 gunpowder 11
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 9 water_bucket 1
replaceitem block ~0 ~-4 ~3 slot.container 10 lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 11 glow_berries 20
replaceitem block ~0 ~-4 ~3 slot.container 12 moss_block 21
replaceitem block ~0 ~-4 ~3 slot.container 13 clay_ball 22
replaceitem block ~0 ~-4 ~3 slot.container 14 iron_ingot 8
loot insert ~0 ~-4 ~3 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 spider_eye 12
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 10
replaceitem block ~0 ~-4 ~-3 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 water_bucket 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 glow_berries 19
replaceitem block ~0 ~-4 ~-3 slot.container 12 moss_block 20
replaceitem block ~0 ~-4 ~-3 slot.container 13 clay_ball 21
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 14
loot insert ~0 ~-4 ~-3 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 moss_block []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 polished_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 polished_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 polished_deepslate []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 polished_deepslate []
fill ~0 ~1 ~5 ~0 ~6 ~5 polished_deepslate []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 polished_deepslate []
fill ~2 ~1 ~5 ~2 ~6 ~5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~6 ~5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~6 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~6 ~3 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 moss_block []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 ochre_froglight []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 ochre_froglight []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 ochre_froglight []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 ochre_froglight []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-3 ~-8 ~3 ~-1 moss_block []
setblock ~-8 ~4 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 amethyst_shard 11
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 12
replaceitem block ~-5 ~1 ~3 slot.container 13 glow_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 14 moss_block 17
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
