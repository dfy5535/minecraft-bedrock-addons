# ============================================================================
# rsf_build_start —— 在玩家斜前方召唤"建造锚点"，开始逐块施工
# 执行上下文：@s = 被选中的玩家，坐标已 at @s
#
# ★ v2.0.1 修正：
#   ① 原来用 `@e[name="RSF_Builder",c=1]` 定位新锚点 —— c=1 是"离执行者最近"，
#      如果附近有旧的锚点更近，就会给旧锚点打标：新锚点永不启动、旧锚点被重置重盖。
#      改为「定位到刚召唤的那个坐标 + distance 圈定」，与旧锚点无关。
#   ② 锚点同时充当"生成物标记"（rsf_site），防重叠判定直接用它。
# ============================================================================
execute at @s run summon armor_stand ~25 ~ ~25 ~ ~ rsf_build_event "RSF_Builder"

# 精确圈定刚召唤的那一个（锚点落点可能存在少许位移，故用 distance=..3）
execute at @s positioned ~25 ~ ~25 run tag @e[type=armor_stand,name="RSF_Builder",tag=!rsf_site,r=3,c=1] add rsf_site
execute at @s positioned ~25 ~ ~25 run tag @e[type=armor_stand,name="RSF_Builder",tag=!rsf_building,r=3,c=1] add rsf_building
execute at @s positioned ~25 ~ ~25 run scoreboard players set @e[type=armor_stand,name="RSF_Builder",r=3] rsf_bstep 0
execute at @s positioned ~25 ~ ~25 run scoreboard players set @e[type=armor_stand,name="RSF_Builder",r=3] rsf_bcd 0
execute at @s positioned ~25 ~ ~25 run scoreboard players set @e[type=armor_stand,name="RSF_Builder",r=3] rsf_style 0
# 学幸运方块：用 scoreboard players random 从本风格的两种建筑里随机挑一个
execute at @s positioned ~25 ~ ~25 run scoreboard players random @e[type=armor_stand,name="RSF_Builder",r=3] rsf_bldg 1 2
