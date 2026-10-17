# ============================================================================
# rsf_spawn —— ★ 生成钩子（执行上下文：@s = 被选中的玩家，坐标已 at @s）
# v2.0.0：两种模式，由 rsf_cfg 的 build_mode 决定
#   build_mode=1 → 进入"逐块建造"流程（在本文件之外，见 rsf_build_start）
#   build_mode=0 → 只放一个地点标记（旧行为）
# 无论哪种，最后都要调 rsf_receipt（回执 + 让框架知道这次成功了）
# ============================================================================

# ---- 模式 1：启动逐块建造 ----
execute if score build_mode rsf_cfg matches 1 run function rsf_build_start

# ---- 模式 0：只放标记 ----
execute if score build_mode rsf_cfg matches 0 run summon armor_stand ~25 ~ ~25 ~ ~ rsf_site_event "RSF_Site"
execute if score build_mode rsf_cfg matches 0 run tag @e[type=armor_stand,name="RSF_Site",c=1] add rsf_site
execute if score build_mode rsf_cfg matches 0 run tag @e[type=armor_stand,name="RSF_Site",c=1] add rsf_placed

# ---- 给玩家提示（生成点在 25 格外，不提示根本不会注意）----
titleraw @a[r=80] title {"rawtext":[{"text":"§b§l附近出现了新的建筑工地！"}]}
playsound random.orb @a[r=80] ~ ~ ~ 0.8 1.2

function rsf_receipt
