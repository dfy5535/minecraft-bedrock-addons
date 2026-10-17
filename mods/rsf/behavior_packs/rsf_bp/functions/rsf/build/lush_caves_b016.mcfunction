# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3088/4224 | 主题内编号: b016/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·要塞地底重装暗牢 (lush_caves_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 lantern []
setblock ~5 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gunpowder 11
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 2 glow_ink_sac 15
replaceitem block ~0 ~-4 ~4 slot.container 3 slime_ball 16
replaceitem block ~0 ~-4 ~4 slot.container 4 string 17
replaceitem block ~0 ~-4 ~4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-4 ~4 slot.container 9 amethyst_shard 8
replaceitem block ~0 ~-4 ~4 slot.container 10 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 11 water_bucket 1
replaceitem block ~0 ~-4 ~4 slot.container 12 lantern 9
replaceitem block ~0 ~-4 ~4 slot.container 13 glow_berries 20
replaceitem block ~0 ~-4 ~4 slot.container 14 moss_block 21
loot insert ~0 ~-4 ~4 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 glow_ink_sac 13
replaceitem block ~0 ~-4 ~-4 slot.container 3 slime_ball 14
replaceitem block ~0 ~-4 ~-4 slot.container 4 string 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 spider_eye 12
replaceitem block ~0 ~-4 ~-4 slot.container 9 amethyst_shard 14
replaceitem block ~0 ~-4 ~-4 slot.container 10 golden_apple 2
replaceitem block ~0 ~-4 ~-4 slot.container 11 water_bucket 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 lantern 8
replaceitem block ~0 ~-4 ~-4 slot.container 13 glow_berries 19
replaceitem block ~0 ~-4 ~-4 slot.container 14 moss_block 20
loot insert ~0 ~-4 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 deepslate_tiles []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 moss_block []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 moss_block []
setblock ~-7 ~9 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 moss_block []
setblock ~6 ~9 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~8 ~6 moss_block []
setblock ~6 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 moss_block []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 deepslate_tile_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 polished_deepslate []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 polished_deepslate []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 polished_deepslate []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 polished_deepslate []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 deepslate_tile_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~-1 ~-9 ~4 ~1 moss_block []
setblock ~-9 ~5 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 glow_ink_sac 10
replaceitem block ~-6 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 2 string 12
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 4
replaceitem block ~-6 ~1 ~4 slot.container 11 amethyst_shard 11
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 12
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
