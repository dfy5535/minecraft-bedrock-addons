# ============================================================================
# lg_receipt —— 回执：让"这次生成是自动发生的"可被事后证明
# 只由 lg_spawn 调用；手动 /summon 不会动这个计数。
#   /scoreboard players list LG_GLOBAL   → 看 lg_count
#   /testfor @a[tag=lg_last_spawner]     → 看是谁触发的
# ============================================================================
scoreboard players add LG_GLOBAL lg_count 1
tag @s add lg_last_spawner
