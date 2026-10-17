# bt_boot —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# [工程扩展 D24a] 自举：安装后无需手动 function bt_init
execute unless entity @e[type=armor_stand,name="BT_Boot"] run function bt_init
