# ============================================================================
# rsf/build/nether_vault —— 下界黑石地窖
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
fill ~-3 ~0 ~-3 ~3 ~5 ~3 air [] replace lava
fill ~-3 ~0 ~-3 ~3 ~5 ~3 air [] replace fire
fill ~-3 ~-2 ~-3 ~3 ~-1 ~3 blackstone [] replace air
fill ~-3 ~0 ~-3 ~3 ~0 ~3 polished_blackstone_bricks []
fill ~-3 ~1 ~-3 ~3 ~3 ~3 polished_blackstone_bricks hollow
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
fill ~-3 ~4 ~-3 ~3 ~4 ~3 polished_blackstone_bricks []
setblock ~0 ~1 ~2 gilded_blackstone []
setblock ~0 ~1 ~1 chest ["facing_direction"=2]
setblock ~0 ~3 ~0 soul_lantern ["hanging"=true]
setblock ~2 ~1 ~2 magma []
setblock ~-2 ~1 ~-2 magma []
