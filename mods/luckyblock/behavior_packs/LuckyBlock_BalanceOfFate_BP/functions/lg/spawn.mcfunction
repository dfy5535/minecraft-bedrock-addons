# ============================================================================
# lg_spawn —— ★★ 生成钩子 ★★
# 执行上下文：@s = 被选中的玩家，坐标已定位到该玩家（at @s）
#
# 本项目生成什么：一个「遗迹种子」lucky:wild_seed
#   - 它有重力，会从空中落到地面（落地门控见 lg_scan 第 7 步）
#   - 落地后 generate_at_seed 就地识别地形，随机建 36 座遗迹里的一座
#   - 遗迹末尾 summon lucky:wild_marker，由脚本换成真正的幸运方块并写幸运值
# ============================================================================

# 1) 在玩家附近（25 格外）召唤种子 —— 让它有重力自然落地
summon lucky:wild_seed ~25 ~8 ~25 ~ ~ ""

# 2) 种子落地初始化（供落地门控读取）
#    ⚠️ 必须「定位到召唤点」再选 c=1。裸写 @e[type=lucky:wild_seed,c=1] 是
#       **离玩家最近**的那颗种子 —— 若场上还有一颗更近的旧种子（上一轮召唤、
#       还没落地），就会串到它身上：新种子拿不到 lg_ready（永远不被扫描、
#       一直坠落成为野实体），旧种子反被打上 lg_site（反重叠记账错位）。
execute positioned ~25 ~8 ~25 run scoreboard players set @e[type=lucky:wild_seed,r=4,c=1] lg_ready 0

# 3) 给玩家提示（不然生成在 25 格外，玩家根本不会注意）
titleraw @a[r=80] title {"rawtext":[{"text":"§b§l远处传来了废墟的气息…"}]}
playsound random.orb @a[r=80] ~ ~ ~ 0.8 1.2

# 4) 就地把这颗种子登记为"本区域正在生成"
#    lg_site：让 lg/scan 的玩家 40/48 格滞回立刻生效（种子落地前也算占用）
#    （长期的"这里已有遗迹"判据是种子建完后留下的 lg_mark 地标，见 generate_at_seed）
execute positioned ~25 ~8 ~25 run tag @e[type=lucky:wild_seed,r=4,c=1] add lg_site

# 5) 收尾：回执（必须放最后）
function lg/receipt
