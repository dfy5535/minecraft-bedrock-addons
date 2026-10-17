# ============================================================================
# rsf/build/plains_ruin —— 荒原残垣
#
# ★★ 这就是"纯指令建一座建筑"的模板：在 rsf/dispatch 里被调用 ★★
# 执行上下文：@s = 种子（隐形实体），~ 就是建筑原点（种子落点）。
# 全部用 setblock / fill 逐块搭，零 .mcstructure，三维度通用。
#
# 坑（都踩过）：
#   · fill 单次上限 32768 格；
#   · 方块状态写 ["k"=v]（不是 k:v），例如 stone_brick_stairs ["weirdo_direction"=3]；
#   · 不带 replace/keep 的 fill 是**破坏性**的，会把别人的建筑一起铲掉，慎用；
#   · 坐标全是相对 ~，所以只要把这套函数挪到别的锚点/实体上，建筑就跟着走。
# ============================================================================
# 第 1 步：清出施工面（掏掉树冠与原木，免得长在树里）
fill ~-4 ~1 ~-4 ~4 ~9 ~4 air [] replace leaves
fill ~-4 ~1 ~-4 ~4 ~9 ~4 air [] replace log
# 第 2 步：地基（往下填，保证不悬空）
fill ~-3 ~-3 ~-3 ~3 ~-1 ~3 cobblestone [] replace air
# 第 3 步：地板 + 四面残墙
fill ~-3 ~0 ~-3 ~3 ~0 ~3 mossy_cobblestone []
fill ~-3 ~1 ~-3 ~3 ~3 ~3 mossy_stone_bricks hollow
# 第 4 步：破口、门洞、断墙（残破感）
fill ~0 ~1 ~-3 ~1 ~2 ~-3 air []
setblock ~0 ~3 ~-3 stone_brick_stairs ["weirdo_direction"=3]
fill ~-3 ~3 ~-3 ~-3 ~3 ~3 air []
fill ~3 ~2 ~-3 ~3 ~3 ~3 air []
# 第 5 步：顶盖 + 核心砖
fill ~-2 ~4 ~-2 ~2 ~4 ~2 stone_brick_slab [] replace air
setblock ~0 ~4 ~0 chiseled_stone_bricks []
# 第 6 步：照明与补给
setblock ~0 ~1 ~0 campfire []
setblock ~2 ~1 ~2 chest ["facing_direction"=3]
setblock ~-2 ~1 ~2 torch []
