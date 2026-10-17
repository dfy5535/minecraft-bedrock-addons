# ============================================================================
# rsf/build/end_altar —— 末地紫珀祭坛
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
fill ~-3 ~-2 ~-3 ~3 ~-1 ~3 end_bricks [] replace air
fill ~-2 ~0 ~-2 ~2 ~0 ~2 purpur_block []
fill ~0 ~1 ~0 ~0 ~4 ~0 purpur_pillar []
fill ~2 ~1 ~2 ~2 ~2 ~2 purpur_pillar []
fill ~-2 ~1 ~2 ~-2 ~2 ~2 purpur_pillar []
fill ~2 ~1 ~-2 ~2 ~2 ~-2 purpur_pillar []
fill ~-2 ~1 ~-2 ~-2 ~2 ~-2 purpur_pillar []
setblock ~2 ~3 ~2 end_rod []
setblock ~-2 ~3 ~2 end_rod []
setblock ~2 ~3 ~-2 end_rod []
setblock ~-2 ~3 ~-2 end_rod []
setblock ~0 ~5 ~0 purpur_block []
setblock ~0 ~6 ~0 end_rod []
setblock ~0 ~1 ~2 chest ["facing_direction"=2]
