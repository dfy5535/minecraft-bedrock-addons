# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3184/4224 | 主题内编号: b112/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·U型回廊学者修道院 (lush_caves_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 1 glow_ink_sac 15
replaceitem block ~4 ~-2 ~0 slot.container 2 slime_ball 16
replaceitem block ~4 ~-2 ~0 slot.container 3 string 17
replaceitem block ~4 ~-2 ~0 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~0 slot.container 5 bone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-2 ~0 slot.container 10 gold_ingot 11
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~0 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~-2 ~0 slot.container 13 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 14 water_bucket 1
loot insert ~4 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_tile_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 moss_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_tile_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 22
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 11
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
