# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3170/4224 | 主题内编号: b098/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·四角炮楼重装要塞 (lush_caves_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 clay []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 shroomlight []
setblock ~5 ~-6 ~-4 shroomlight []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 bone 11
replaceitem block ~5 ~-4 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~-4 ~4 slot.container 2 gunpowder 11
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 glow_ink_sac 15
replaceitem block ~5 ~-4 ~4 slot.container 5 slime_ball 16
replaceitem block ~5 ~-4 ~4 slot.container 9 clay_ball 17
replaceitem block ~5 ~-4 ~4 slot.container 10 iron_ingot 10
replaceitem block ~5 ~-4 ~4 slot.container 11 gold_ingot 9
replaceitem block ~5 ~-4 ~4 slot.container 12 diamond 6
replaceitem block ~5 ~-4 ~4 slot.container 13 amethyst_shard 13
replaceitem block ~5 ~-4 ~4 slot.container 14 golden_apple 8
loot insert ~5 ~-4 ~4 loot "rsf/lush_caves"
loot insert ~5 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 deepslate_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 moss_block []
setblock ~-7 ~10 ~-6 shroomlight []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 moss_block []
setblock ~-7 ~10 ~5 shroomlight []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 moss_block []
setblock ~6 ~10 ~-6 shroomlight []
fill ~6 ~1 ~5 ~7 ~9 ~6 moss_block []
setblock ~6 ~10 ~5 shroomlight []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 moss_block []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 deepslate_brick_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 polished_deepslate []
setblock ~-7 ~9 ~-6 shroomlight []
setblock ~-7 ~8 ~6 polished_deepslate []
setblock ~-7 ~9 ~6 shroomlight []
setblock ~7 ~8 ~-6 polished_deepslate []
setblock ~7 ~9 ~-6 shroomlight []
setblock ~7 ~8 ~6 polished_deepslate []
setblock ~7 ~9 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-3 ~-9 ~6 ~-1 moss_block []
setblock ~-9 ~7 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 glow_berries 22
replaceitem block ~-6 ~1 ~4 slot.container 10 moss_block 16
replaceitem block ~-6 ~1 ~4 slot.container 11 clay_ball 17
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 6
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
