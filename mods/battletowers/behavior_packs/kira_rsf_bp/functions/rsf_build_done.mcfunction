# ============================================================================
# rsf_build_done —— 建造收尾（执行上下文：@s = 建造锚点）
# 锚点不销毁：它留在原地充当"生成物标记"，防重叠判定（r=180）靠它生效
# ============================================================================
tag @s add rsf_built
execute as @s at @s run playsound random.levelup @a[r=40] ~ ~ ~ 0.7 1.4
execute as @s at @s run titleraw @a[r=60] actionbar {"rawtext":[{"text":"§a§l建筑竣工！"}]}
execute as @s at @s run particle minecraft:huge_explosion_emitter ~ ~1 ~
