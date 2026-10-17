# ============================================================================
# rsf/doctor —— 自检：把运行状态读到聊天栏（/function rsf/doctor）
# v2.3.1：追加「累计建成建筑数」与「最近一次生成 → 地形主题 #N / 建筑编号 bNNN」
# ============================================================================
scoreboard players set RSF_TMP rsf_diag 0
execute as @e[type=rsf:seed] run scoreboard players add RSF_TMP rsf_diag 1
scoreboard players set RSF_TMP2 rsf_diag 0
execute as @e[type=armor_stand,tag=rsf_mark] run scoreboard players add RSF_TMP2 rsf_diag 1
tellraw @s {"rawtext":[{"text":"§b[RSF] 时钟 "},{"score":{"name":"RSF_GLOBAL","objective":"rsf_cd"}},{"text":" / 累计生成 "},{"score":{"name":"RSF_GLOBAL","objective":"rsf_count"}},{"text":" / 卡住丢弃 "},{"score":{"name":"RSF_GLOBAL","objective":"rsf_discard"}},{"text":" / 建成建筑 "},{"score":{"name":"RSF_GLOBAL","objective":"rsf_builds"}},{"text":"\n§7场上种子 "},{"score":{"name":"RSF_TMP","objective":"rsf_diag"}},{"text":" · 永久地标 "},{"score":{"name":"RSF_TMP2","objective":"rsf_diag"}},{"text":"\n§7最近一次生成 → 地形主题 #"},{"score":{"name":"RSF_LAST_THEME","objective":"rsf_diag"}},{"text":" / 建筑编号 b"},{"score":{"name":"RSF_LAST_BUILD","objective":"rsf_diag"}},{"text":"\n§7周期 "},{"score":{"name":"period","objective":"rsf_cfg"}},{"text":" 刻 · 开关 "},{"score":{"name":"enabled","objective":"rsf_cfg"}}]}
