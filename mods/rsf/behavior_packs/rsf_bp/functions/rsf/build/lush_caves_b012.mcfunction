# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3084/4224 | 主题内编号: b012/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子暗门地底宝库 (lush_caves_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 moss_block []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~5 ~-4 ~2 slot.container 1 slime_ball 16
replaceitem block ~5 ~-4 ~2 slot.container 2 string 17
replaceitem block ~5 ~-4 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-4 ~2 slot.container 4 bone 11
replaceitem block ~5 ~-4 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~-4 ~2 slot.container 9 amethyst_shard 8
replaceitem block ~5 ~-4 ~2 slot.container 10 golden_apple 3
replaceitem block ~5 ~-4 ~2 slot.container 11 water_bucket 1
replaceitem block ~5 ~-4 ~2 slot.container 12 lantern 9
replaceitem block ~5 ~-4 ~2 slot.container 13 glow_berries 20
replaceitem block ~5 ~-4 ~2 slot.container 14 moss_block 21
loot insert ~5 ~-4 ~2 loot "rsf/lush_caves"
loot insert ~5 ~-4 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 deepslate_tiles []
fill ~2 ~1 ~-4 ~7 ~7 ~4 deepslate_tiles []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 moss_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 deepslate_tile_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~5 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-2 ~-9 ~5 ~0 moss_block []
setblock ~-9 ~6 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 glow_ink_sac 10
replaceitem block ~-6 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 9 clay_ball 20
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 13
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 2
replaceitem block ~-6 ~1 ~2 slot.container 13 amethyst_shard 9
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
