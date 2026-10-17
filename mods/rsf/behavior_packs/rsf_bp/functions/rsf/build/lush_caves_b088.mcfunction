# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3160/4224 | 主题内编号: b088/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·矿车铁轨转运仓库 (lush_caves_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 moss_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 11
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-3 ~4 slot.container 2 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 glow_ink_sac 15
replaceitem block ~3 ~-3 ~4 slot.container 5 slime_ball 16
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 10 diamond 2
replaceitem block ~3 ~-3 ~4 slot.container 11 amethyst_shard 9
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~-3 ~4 slot.container 13 water_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 14 lantern 10
loot insert ~3 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~6 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 deepslate_tile_wall []
setblock ~5 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 deepslate_tile_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 polished_deepslate []
setblock ~-7 ~5 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 polished_deepslate []
setblock ~-7 ~5 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 polished_deepslate []
setblock ~7 ~5 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~4 ~6 polished_deepslate []
setblock ~7 ~5 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~1 moss_block []
setblock ~-7 ~7 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 glow_ink_sac 10
replaceitem block ~-4 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 9 glow_berries 19
replaceitem block ~-4 ~1 ~4 slot.container 10 moss_block 20
replaceitem block ~-4 ~1 ~4 slot.container 11 clay_ball 21
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond 3
loot insert ~-4 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
