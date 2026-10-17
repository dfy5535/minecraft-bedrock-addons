# ============================================================================
# rsf_settle —— 落地门控（可选工具）
# 用途：生成的实体如果会被放在半空（例如按玩家所在的 Y 生成），它会自由落体，
#       导致"以它自身位置为原点"的后续建造整体错位甚至实体坠毁。
# 用法：在你的实体主循环里加一行——
#   execute as @e[tag=rsf_site,scores={rsf_ready=0}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s rsf_ready 1
# 然后你的建造逻辑统一加前置条件 scores={rsf_ready=1}
# 本文件提供一个现成实现，供 @e[tag=rsf_site] 直接调用：
# ============================================================================
execute as @e[tag=rsf_site,scores={rsf_ready=0}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s rsf_ready 1
