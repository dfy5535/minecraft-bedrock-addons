# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0008/4224 | 主题内编号: b008/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·凯旋双拱圣物祭坛 (plains_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 cracked_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cracked_stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 stone_bricks []
setblock ~-6 ~9 ~-4 campfire []
setblock ~-6 ~8 ~4 stone_bricks []
setblock ~-6 ~9 ~4 campfire []
setblock ~6 ~8 ~-4 stone_bricks []
setblock ~6 ~9 ~-4 campfire []
setblock ~6 ~8 ~4 stone_bricks []
setblock ~6 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~8 ~0 ~-1 ~8 ~9 ~-1 stone_bricks []
fill ~8 ~8 ~-3 ~8 ~8 ~1 cobblestone_wall []
fill ~8 ~6 ~-1 ~8 ~10 ~-1 cobblestone_wall []
setblock ~8 ~10 ~-1 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 9 oak_log 17
replaceitem block ~-5 ~1 ~2 slot.container 10 apple 8
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 14 torch 22
loot insert ~-5 ~1 ~2 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~2 ~0
