# bt_init —— 自动生成自任务书，勿手改（改 tools/build_bp.mjs）
# 1. 建立核心控制室永久常加载区（以 0 100 0 为中心，半径 4 区块）
tickingarea add circle 0 100 0 4 BT_Core true
# 2. 配置服务器规则（禁止命令方块刷屏，开启爆炸与命令反馈）
gamerule commandblockoutput false
gamerule sendcommandfeedback true
gamerule tntexplodes true
# 3. 注册全套战斗高塔计分板变量
scoreboard objectives add bt_state dummy "高塔生命周期状态(0-5)"
scoreboard objectives add bt_variant dummy "高塔变体编号(1-50)"
scoreboard objectives add bt_arch dummy "高塔建筑结构母型(1-10)"
scoreboard objectives add bt_floor dummy "当前楼层编号(1-10)"
scoreboard objectives add bt_step dummy "单层逐块施工步进(1-50)"
scoreboard objectives add bt_dir dummy "奇偶层楼梯朝向(0东/1西)"
scoreboard objectives add bt_event dummy "楼层特殊事件编号(0-6)"
scoreboard objectives add bt_spawner_cnt dummy "本层存活刷怪笼数(0-2)"
scoreboard objectives add bt_wave_cd dummy "刷怪笼波次冷却计时"
scoreboard objectives add bt_trap_cd dummy "变体机关环境触发计时"
scoreboard objectives add bt_golem_hp dummy "守卫者Boss自定义生命"
scoreboard objectives add bt_golem_phase dummy "守卫者Boss阶段(1-3)"
scoreboard objectives add bt_golem_angry dummy "守卫者狂暴状态(0或1)"
scoreboard objectives add bt_skill_cd dummy "Boss必杀技冷却计时"
scoreboard objectives add bt_collapse_cd dummy "高塔崩塌逃生倒计时"
scoreboard objectives add bt_rng dummy "全局伪随机数发生器"
scoreboard objectives add bt_explore_cd dummy "全服探索自然生成计时"
# 4. 初始化全局伪随机数种子与常量
scoreboard players set BT_GLOBAL bt_rng 137
scoreboard players set BT_GLOBAL bt_explore_cd 0
scoreboard players set BT_FIFTY bt_rng 50
scoreboard players set BT_TEN bt_rng 10
scoreboard players set BT_SIX bt_rng 6

# --- 工程扩展（见 DEVIATIONS.md D4/D9）：扩展 objective 必须显式注册 ---
scoreboard objectives add bt_autospawn dummy "野外自然生成开关(0关/1开)"
scoreboard objectives add bt_force_variant dummy "测试钩子:强制变体编号(0=随机)"
scoreboard objectives add bt_event_roll dummy "楼层事件掷骰临时变量"
scoreboard objectives add bt_phase_cd dummy "守卫者Boss阶段计时"
scoreboard objectives add bt_cast_count dummy "必杀技动画事件回执(1=起手/10=结束)"
scoreboard objectives add bt_spawn_count dummy "自然生成累计次数(回执)"
scoreboard objectives add bt_wave_state dummy "本层波次状态(0未激活/1战斗中/2已完成)"
scoreboard objectives add bt_wave_n dummy "本层已生成怪物数"
scoreboard objectives add bt_wave_total dummy "本层应生成怪物总数"
scoreboard objectives add bt_wave_cd dummy "本层刷怪节流计时(刻)"
# --- 工程扩展 D4：自然生成开关，默认 1 = 与任务书一致 ---
scoreboard players set BT_GLOBAL bt_autospawn 1
# --- 工程扩展（见 DEVIATIONS.md D9）：测试钩子，0 = 关闭（走任务书随机变体） ---
scoreboard players set BT_GLOBAL bt_force_variant 0
# --- 工程扩展 D24a：自举哨兵（落在 bt_init 建立的常加载区内，永远加载得到） ---
# [工程扩展 D24e] 必须补上生成事件槽：summon 的第 6 参是 spawnEvent，缺了它名字会被当事件解析 -> 召唤失败
execute unless entity @e[type=armor_stand,name="BT_Boot"] run summon armor_stand 0 100 0 ~ ~ bt_spawn_init "BT_Boot"
execute as @e[type=armor_stand,name="BT_Boot"] at @s run effect @s invisibility 999999 1 true
