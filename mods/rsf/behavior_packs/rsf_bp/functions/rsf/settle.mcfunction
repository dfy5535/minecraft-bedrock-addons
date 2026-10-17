# ============================================================================
# rsf/settle —— 落地门控 + 地形分派（每刻，三维度通吃）
# ① 给"任何来源"的种子补初始分（自然刷 / 管理员手动 /summon 都要能开工）
# ② 落地门控：脚下非空气/水/岩浆 才算落地
# ③ 埋在实体方块里的种子直接丢弃（否则会长出一座被埋住、玩家找不到的建筑）
# ④ 已落地 → 就地识别地形并建造
# ============================================================================

# ① 任何来源的种子都补初始分
#    scores={...} 对"没有分数"的实体是不匹配的，而自然刷/手动召唤的种子都没有分
#    → 那种种子会一直坠落、永远不建。惯用法：unless score @s ... matches
execute as @e[type=rsf:seed] unless score @s rsf_ready matches -100..100 run scoreboard players set @s rsf_ready 0

# ② 落地门控
execute as @e[type=rsf:seed,scores={rsf_ready=0}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run scoreboard players set @s rsf_ready 1

# ③ 埋在实体方块里 → 丢弃（自身格既非空气也非水）
execute as @e[type=rsf:seed,scores={rsf_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run scoreboard players add RSF_GLOBAL rsf_discard 1
execute as @e[type=rsf:seed,scores={rsf_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run event entity @s rsf:despawn
execute as @e[type=rsf:seed,scores={rsf_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run kill @s

# ④ 已落地 → 就地识别地形并建造
execute as @e[type=rsf:seed,scores={rsf_ready=1}] at @s run function rsf/dispatch
