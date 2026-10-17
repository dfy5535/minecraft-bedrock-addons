# bt_main —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# 每刻主循环（tick.json 驱动）
function bt_boot
# [D31] 三维度通道：@e 选择器不跨维度，而 tick 函数默认只在主世界上下文执行 ——
# 下界/末地的锚点必须由对应维度的通道驱动，否则引擎看不见它，塔永远建不起来。
# 时钟也上移到这里（原先在 bt_core 里，三维度通道会把它变成 3 倍速）。
scoreboard players add BT_GLOBAL bt_explore_cd 1
function bt_core
# [D32] 逐层波次控制器（D36 后只跑一遍：@e 本来就跨维度）
function bt_wave

# --- 分变体门控（DEVIATIONS.md D2）：只有该变体的高塔存在时才执行其 5 大模块，语义不变、性能可控 ---
execute if entity @e[tag=bt_tower_root] run function bt_gates

function bt_events
function bt_common
function bt_finale
