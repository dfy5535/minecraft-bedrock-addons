# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3080/4224 | 主题内编号: b008/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·凯旋双拱圣物祭坛 (lush_caves_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 moss_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 deepslate_tiles []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 moss_block []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 deepslate_tile_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 polished_deepslate []
setblock ~-6 ~9 ~-4 lantern []
setblock ~-6 ~8 ~4 polished_deepslate []
setblock ~-6 ~9 ~4 lantern []
setblock ~6 ~8 ~-4 polished_deepslate []
setblock ~6 ~9 ~-4 lantern []
setblock ~6 ~8 ~4 polished_deepslate []
setblock ~6 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~5 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~0 moss_block []
setblock ~-8 ~7 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-5 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 2 string 12
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 glow_berries 16
replaceitem block ~-5 ~1 ~2 slot.container 10 moss_block 17
replaceitem block ~-5 ~1 ~2 slot.container 11 clay_ball 18
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond 7
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
