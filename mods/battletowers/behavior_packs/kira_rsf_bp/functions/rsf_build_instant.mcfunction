# ============================================================================
# rsf_build_instant —— ★ v2.1.0：一 tick 内建成（借鉴幸运方块的做法）
# 幸运方块的建筑是"一次性几百个 setblock 摆完"，建筑瞬间成型、无生长过程。
# 这里复用同一套步骤表：把「步进 → 派发」重复 16 轮，一 tick 内走完全部步骤。
# 由 rsf_build_drive 在 build_mode=2 时调用一次。
# ============================================================================
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=0}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=1}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=2}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=3}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=4}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=5}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=6}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=7}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=8}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=9}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=10}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=11}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=12}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=13}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=14}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..,rsf_bstep=15}] at @s run scoreboard players add @s rsf_bstep 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps
