# ============================================================================
# rsf/boot —— 自举：装包后无需手动执行任何命令
# 用永不消失的隐形哨兵判断"是否初始化过"（不能用计分板判断，鸡生蛋）
# v2.3.1：同时认名字与 tag；init 不再清零时钟 → 自举必然收敛
# ============================================================================
execute unless entity @e[type=armor_stand,name="RSF_Boot"] unless entity @e[type=armor_stand,tag=rsf_boot_mark] run function rsf/init
