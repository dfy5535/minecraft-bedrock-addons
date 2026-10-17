# ============================================================================
# rsf_build_style —— ★ v2.0.1：按环境自动选择建筑风格（由 rsf_build_drive 调用）
# 判断依据是锚点脚下的方块（比"判断自己在哪个维度"更可靠，且能区分生物群系）
#   风格 1 石砖哨塔   ← 草地/泥土/石头等（平原·森林·山地）
#   风格 2 砂岩哨塔   ← 沙子/红沙/砂岩/陶瓦（沙漠·台地）
#   风格 3 下界黑石塔 ← 下界岩/黑石/玄武岩/灵魂土/菌岩
#   风格 4 末地紫珀塔 ← 末地石
# ============================================================================
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ end_stone run scoreboard players set @s rsf_style 4
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ netherrack run scoreboard players set @s rsf_style 3
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ blackstone run scoreboard players set @s rsf_style 3
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ basalt run scoreboard players set @s rsf_style 3
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ soul_soil run scoreboard players set @s rsf_style 3
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ sand run scoreboard players set @s rsf_style 2
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ red_sand run scoreboard players set @s rsf_style 2
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s if block ~ ~-1 ~ sandstone run scoreboard players set @s rsf_style 2
# 兜底：以上都不匹配 → 石砖（平原/森林/山地）
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=0}] at @s run scoreboard players set @s rsf_style 1
