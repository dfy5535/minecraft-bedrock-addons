# ============================================================================
# rsf/receipt —— 回执：让"这次生成是自动发生的"可被事后证明
# 只由 rsf/spawn 调用；手动 /summon 不会动这个计数。
#   /scoreboard players list RSF_GLOBAL
# ============================================================================
scoreboard players add RSF_GLOBAL rsf_count 1
tag @s add rsf_last_spawner
