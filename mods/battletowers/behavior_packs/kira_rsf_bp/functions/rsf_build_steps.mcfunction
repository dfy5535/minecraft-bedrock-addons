# ============================================================================
# rsf_build_steps —— ★★ 建造步骤表（你要改的地方）★★
#
# 执行上下文：@s = 建造锚点（隐形盔甲架），坐标就是建筑原点。
# 条件里写 scores={rsf_style=S,rsf_bldg=B,rsf_bstep=N}：
#   rsf_style 1..4 = 石砖 / 砂岩 / 下界黑石 / 末地紫珀（由脚下的方块自动判定）
#   rsf_bldg  1..2 = 同风格下的两种建筑（由 scoreboard players random 随机挑，参考幸运方块的做法）
#   rsf_bstep 1..N = 第几步
#
# 两种节奏由 rsf_cfg 的 build_mode 决定：
#   build_mode=1 逐步建造（每 4 刻一步，看得见长出来）
#   build_mode=2 瞬时生成（一 tick 内跑完全部步骤，建筑瞬间成型 —— 幸运方块的做法）
#
# 骨架由 tools/gen_steps2.mjs 生成，改骨架请改那个文件后重跑。
# ============================================================================

# ========== 风格 1 · 建筑 1：哨塔 · 石砖系（平原·森林·山地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=2}] at @s  run fill ~-2 ~-4 ~-2 ~2 ~-1 ~2 cobblestone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=3}] at @s  run fill ~-2 ~0 ~-2 ~2 ~0 ~2 stone_bricks []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=4}] at @s  run fill ~-2 ~1 ~-2 ~2 ~3 ~2 stone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-2 ~0 ~2 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-2 stone_brick_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~-2 ~2 ~0 ~-2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~2 ~2 ~0 ~2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=7}] at @s  run fill ~-2 ~4 ~-2 ~2 ~4 ~2 stone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=8}] at @s  run fill ~-2 ~5 ~-2 ~2 ~7 ~2 stone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~-2 ~0 ~6 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~2 ~0 ~6 ~2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~-2 ~6 ~0 ~-2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~2 ~6 ~0 ~2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~1 ~1 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~2 ~1 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~3 ~1 stone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=11}] at @s  run fill ~-3 ~8 ~-3 ~3 ~8 ~3 stone_brick_slab [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=12}] at @s  run fill ~-2 ~9 ~-2 ~2 ~9 ~2 stone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~3 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~7 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~10 ~0 torch []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=1,rsf_bstep=14}] at @s  run function rsf_build_done

# ========== 风格 1 · 建筑 2：旅人小屋 · 石砖系（平原·森林·山地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=2}] at @s  run fill ~-3 ~-3 ~-3 ~3 ~-1 ~3 cobblestone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=3}] at @s  run fill ~-3 ~0 ~-3 ~3 ~0 ~3 stone_bricks []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=4}] at @s  run fill ~-3 ~1 ~-3 ~3 ~3 ~3 stone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-3 stone_brick_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~-3 ~2 ~0 ~-3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~3 ~2 ~0 ~3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~0 ~2 ~3 ~0 ~2 ~3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=7}] at @s  run fill ~-3 ~4 ~-3 ~3 ~4 ~3 stone_brick_slab [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~-1 ~2 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~1 ~2 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=1,rsf_bldg=2,rsf_bstep=9}] at @s  run function rsf_build_done

# ========== 风格 2 · 建筑 1：哨塔 · 砂岩系（沙漠·台地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=2}] at @s  run fill ~-2 ~-4 ~-2 ~2 ~-1 ~2 sandstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=3}] at @s  run fill ~-2 ~0 ~-2 ~2 ~0 ~2 cut_sandstone []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=4}] at @s  run fill ~-2 ~1 ~-2 ~2 ~3 ~2 cut_sandstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-2 ~0 ~2 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-2 sandstone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~-2 ~2 ~0 ~-2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~2 ~2 ~0 ~2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=7}] at @s  run fill ~-2 ~4 ~-2 ~2 ~4 ~2 cut_sandstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=8}] at @s  run fill ~-2 ~5 ~-2 ~2 ~7 ~2 cut_sandstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~-2 ~0 ~6 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~2 ~0 ~6 ~2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~-2 ~6 ~0 ~-2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~2 ~6 ~0 ~2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~1 ~1 sandstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~2 ~1 sandstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~3 ~1 sandstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=11}] at @s  run fill ~-3 ~8 ~-3 ~3 ~8 ~3 smooth_sandstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=12}] at @s  run fill ~-2 ~9 ~-2 ~2 ~9 ~2 sandstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~3 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~7 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~10 ~0 torch []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=1,rsf_bstep=14}] at @s  run function rsf_build_done

# ========== 风格 2 · 建筑 2：旅人小屋 · 砂岩系（沙漠·台地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=2}] at @s  run fill ~-3 ~-3 ~-3 ~3 ~-1 ~3 sandstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=3}] at @s  run fill ~-3 ~0 ~-3 ~3 ~0 ~3 cut_sandstone []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=4}] at @s  run fill ~-3 ~1 ~-3 ~3 ~3 ~3 cut_sandstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-3 sandstone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~-3 ~2 ~0 ~-3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~3 ~2 ~0 ~3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~0 ~2 ~3 ~0 ~2 ~3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=7}] at @s  run fill ~-3 ~4 ~-3 ~3 ~4 ~3 smooth_sandstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~-1 ~2 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~1 ~2 ~0 lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=2,rsf_bldg=2,rsf_bstep=9}] at @s  run function rsf_build_done

# ========== 风格 3 · 建筑 1：哨塔 · 下界黑石系（下界） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=2}] at @s  run fill ~-2 ~-4 ~-2 ~2 ~-1 ~2 blackstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=3}] at @s  run fill ~-2 ~0 ~-2 ~2 ~0 ~2 polished_blackstone_bricks []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=4}] at @s  run fill ~-2 ~1 ~-2 ~2 ~3 ~2 polished_blackstone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-2 ~0 ~2 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-2 polished_blackstone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~-2 ~2 ~0 ~-2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~2 ~2 ~0 ~2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=7}] at @s  run fill ~-2 ~4 ~-2 ~2 ~4 ~2 polished_blackstone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=8}] at @s  run fill ~-2 ~5 ~-2 ~2 ~7 ~2 polished_blackstone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~-2 ~0 ~6 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~2 ~0 ~6 ~2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~-2 ~6 ~0 ~-2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~2 ~6 ~0 ~2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~1 ~1 polished_blackstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~2 ~1 polished_blackstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~3 ~1 polished_blackstone_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=11}] at @s  run fill ~-3 ~8 ~-3 ~3 ~8 ~3 nether_brick [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=12}] at @s  run fill ~-2 ~9 ~-2 ~2 ~9 ~2 polished_blackstone hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~3 ~0 soul_lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~7 ~0 soul_lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~10 ~0 soul_torch []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=1,rsf_bstep=14}] at @s  run function rsf_build_done

# ========== 风格 3 · 建筑 2：旅人小屋 · 下界黑石系（下界） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=2}] at @s  run fill ~-3 ~-3 ~-3 ~3 ~-1 ~3 blackstone [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=3}] at @s  run fill ~-3 ~0 ~-3 ~3 ~0 ~3 polished_blackstone_bricks []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=4}] at @s  run fill ~-3 ~1 ~-3 ~3 ~3 ~3 polished_blackstone_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-3 polished_blackstone_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~-3 ~2 ~0 ~-3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~3 ~2 ~0 ~3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~0 ~2 ~3 ~0 ~2 ~3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=7}] at @s  run fill ~-3 ~4 ~-3 ~3 ~4 ~3 nether_brick [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~-1 ~2 ~0 soul_lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~1 ~2 ~0 soul_lantern ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=3,rsf_bldg=2,rsf_bstep=9}] at @s  run function rsf_build_done

# ========== 风格 4 · 建筑 1：哨塔 · 末地紫珀系（末地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=1}] at @s  run fill ~-3 ~0 ~-3 ~3 ~9 ~3 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=2}] at @s  run fill ~-2 ~-4 ~-2 ~2 ~-1 ~2 end_bricks [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=3}] at @s  run fill ~-2 ~0 ~-2 ~2 ~0 ~2 purpur_block []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=4}] at @s  run fill ~-2 ~1 ~-2 ~2 ~3 ~2 end_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-2 ~0 ~2 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-2 purpur_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~-2 ~2 ~0 ~-2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=6}] at @s  run fill ~2 ~2 ~0 ~2 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=7}] at @s  run fill ~-2 ~4 ~-2 ~2 ~4 ~2 purpur_block hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=8}] at @s  run fill ~-2 ~5 ~-2 ~2 ~7 ~2 end_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~-2 ~0 ~6 ~-2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~0 ~6 ~2 ~0 ~6 ~2 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~-2 ~6 ~0 ~-2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=9}] at @s  run fill ~2 ~6 ~0 ~2 ~6 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~1 ~1 purpur_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~2 ~1 purpur_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=10}] at @s  run setblock ~1 ~3 ~1 purpur_stairs ["weirdo_direction"=2]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=11}] at @s  run fill ~-3 ~8 ~-3 ~3 ~8 ~3 purpur_block [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=12}] at @s  run fill ~-2 ~9 ~-2 ~2 ~9 ~2 purpur_pillar hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~3 ~0 end_rod ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~7 ~0 end_rod ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=13}] at @s  run setblock ~0 ~10 ~0 end_rod []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=1,rsf_bstep=14}] at @s  run function rsf_build_done

# ========== 风格 4 · 建筑 2：旅人小屋 · 末地紫珀系（末地） ==========
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace leaves
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=1}] at @s  run fill ~-2 ~0 ~-2 ~2 ~5 ~2 air [] replace log
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=2}] at @s  run fill ~-3 ~-3 ~-3 ~3 ~-1 ~3 end_bricks [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=3}] at @s  run fill ~-3 ~0 ~-3 ~3 ~0 ~3 purpur_block []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=4}] at @s  run fill ~-3 ~1 ~-3 ~3 ~3 ~3 end_bricks hollow
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=5}] at @s  run fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=5}] at @s  run setblock ~0 ~3 ~-3 purpur_stairs ["weirdo_direction"=3]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~-3 ~2 ~0 ~-3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~3 ~2 ~0 ~3 ~2 ~0 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=6}] at @s  run fill ~0 ~2 ~3 ~0 ~2 ~3 air []
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=7}] at @s  run fill ~-3 ~4 ~-3 ~3 ~4 ~3 purpur_block [] replace air
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~-1 ~2 ~0 end_rod ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=8}] at @s  run setblock ~1 ~2 ~0 end_rod ["hanging"=true]
execute as @e[type=armor_stand,name="RSF_Builder",scores={rsf_style=4,rsf_bldg=2,rsf_bstep=9}] at @s  run function rsf_build_done
