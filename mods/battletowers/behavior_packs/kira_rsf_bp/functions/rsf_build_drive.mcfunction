# ============================================================================
# rsf_build_drive —— 建造锚点每刻推进（三维度各跑一次）
# 关键设计（都是从战斗高塔踩坑总结出来的）：
#   ① 落地门控：锚点按玩家所在的 Y 生成，25 格外的地形可能低十几格 ——
#      不落地就开工会把整个建筑建在半空，锚点还会一路坠落消失。
#   ② 一 tick 一步：步进号 +1，然后由 rsf_build_steps 按步号派发。
#   ③ 完成即停：步进号到 RSF_BUILD_STEPS 就不再推进，锚点留在原地当永久标记。
# ============================================================================

# ① 落地门控：脚下有东西才算落地
execute as @e[type=armor_stand,tag=rsf_building,tag=!rsf_b_ready] at @s unless block ~ ~-1 ~ air run tag @s add rsf_b_ready

# ② 保护：隐形 + 满抗性 + 每刻回血（防止被岩浆/凋灵玫瑰/爆炸弄死，导致烂尾）
execute as @e[type=armor_stand,tag=rsf_building] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,tag=rsf_building] at @s run effect @s resistance 5 4 true
execute as @e[type=armor_stand,tag=rsf_building] at @s run effect @s instant_health 1 10 true

# ③ 步进节流：每 RSF_BUILD_SPEED 刻走一步（默认 4 刻 = 0.2 秒/步，看得见地长出来）
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_bstep=..199}] at @s run scoreboard players add @s rsf_bcd 1
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_bcd=4..,rsf_bstep=..199}] at @s run scoreboard players set @s rsf_bcd 0
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_bcd=0,rsf_bstep=..199}] at @s run scoreboard players add @s rsf_bstep 1

# ④ 按环境选风格（只做一次）
execute as @e[type=armor_stand,tag=rsf_building] at @s run function rsf_build_style

# ⑤ 派发：按当前步号执行 rsf_build_steps 里对应的那一行
#    风格未定（rsf_style=0）时不派发，避免用错材质建一遍
execute as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_steps

# ⑥ 节奏分派：build_mode=1 逐步建造（每 4 刻一步）／=2 瞬时生成（一 tick 成型）
execute if score build_mode rsf_cfg matches 2 as @e[type=armor_stand,tag=rsf_building,tag=rsf_b_ready,scores={rsf_style=1..}] at @s run function rsf_build_instant
