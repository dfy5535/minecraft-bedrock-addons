# Minecraft Bedrock Add-ons · 合集总仓库

> **这是总仓库（umbrella repo）**，本身不放 MOD 代码，只用 **git submodule** 管理 7 个独立仓库。
> 每个 MOD 有自己的仓库、自己的 Releases、自己的更新日志。
>
> **最低兼容基线 1.21.60，向上兼容**（已实测至 **1.26.52.3**）。

[![Minecraft](https://img.shields.io/badge/Minecraft-Bedrock-3fb950?style=flat-square)](https://www.minecraft.net/)
[![Min Version](https://img.shields.io/badge/min%20version-1.21.60-blue?style=flat-square)](#兼容性)
[![Tested](https://img.shields.io/badge/tested-1.26.52.3-brightgreen?style=flat-square)](#兼容性)
[![License](https://img.shields.io/badge/license-MIT%20%2B%20CC--BY--4.0-yellow?style=flat-square)](./LICENSE)

---

## MOD 一览

| MOD | 独立仓库 | 版本 | 一句话 |
|---|---|---|---|
| ⛏️ **深层矿脉 · 纪元锻造** | [bedrock-deepvein](https://github.com/dfy5535/bedrock-deepvein) · [Releases](https://github.com/dfy5535/bedrock-deepvein/releases) | `v2.2.3` | 19 种自然生成矿脉 + 完整冶炼链 + 全 3D 装备 |
| 🧟 **僵尸纪元** | [bedrock-zombie-evolution](https://github.com/dfy5535/bedrock-zombie-evolution) · [Releases](https://github.com/dfy5535/bedrock-zombie-evolution/releases) | `v4.0.3` 兼容<br/>`v4.1.0` 满血 | 智能僵尸生态 + 12 种族群 |
| 🎲 **万象天平 · 幸运方块** | [bedrock-lucky-block](https://github.com/dfy5535/bedrock-lucky-block) · [Releases](https://github.com/dfy5535/bedrock-lucky-block/releases) | `v1.3.2` | 1000 种随机事件 + 幸运值动态调律 |
| 🍀 **幸运四叶草** | [bedrock-lucky-clover](https://github.com/dfy5535/bedrock-lucky-clover) · [Releases](https://github.com/dfy5535/bedrock-lucky-clover/releases) | `v1.1.2` | 除草掉落四叶草，祈愿触发 24 种奇遇 |
| 🌳 **矿物果树 3D** | [bedrock-ore-trees](https://github.com/dfy5535/bedrock-ore-trees) · [Releases](https://github.com/dfy5535/bedrock-ore-trees/releases) | `v1.0.0` | 八大矿物树苗 → 矿石树冠 |
| 🏰 **战斗高塔** | [bedrock-battle-towers](https://github.com/dfy5535/bedrock-battle-towers) · [Releases](https://github.com/dfy5535/bedrock-battle-towers/releases) | `v2.1.3` | 50 变体纯指令高塔 + 10 原型守卫者 |
| 🧱 **野外随机生成框架** | [bedrock-rsf](https://github.com/dfy5535/bedrock-rsf) · [Releases](https://github.com/dfy5535/bedrock-rsf/releases) | `v2.3.1` | 全地形 4,224 座纯指令建筑 |

> 想下东西直接点各仓库的 **Releases**，里面有打包好的 `.mcaddon`。

---

## 目录结构

```
minecraft-bedrock-addons/            ← 总仓库（本仓库）
├── README.md                        ← 本页（索引）
├── COMPATIBILITY.md                 ← 版本兼容矩阵与测试证据
├── NOTICE.md                        ← 授权状况说明
├── LICENSE                          ← MIT（代码 / JSON）
├── LICENSE-ASSETS.md                ← CC-BY-4.0（贴图 / 3D 模型）
├── .gitmodules                      ← 子模块清单
├── docs/                            ← 兼容修复报告、校验报告
└── mods/
    ├── deepvein      → bedrock-deepvein          （子模块）
    ├── zombie        → bedrock-zombie-evolution  （子模块）
    ├── luckyblock    → bedrock-lucky-block       （子模块）
    ├── luckyclover   → bedrock-lucky-clover      （子模块）
    ├── oretrees      → bedrock-ore-trees         （子模块）
    ├── battletowers  → bedrock-battle-towers     （子模块）
    └── rsf           → bedrock-rsf               （子模块）
```

---

## 克隆

```bash
# 连子模块一起拉
git clone --recurse-submodules https://github.com/dfy5535/minecraft-bedrock-addons.git

# 或者已经克隆了但子模块是空的
git submodule update --init --recursive
```

只想拿某个 MOD？

```bash
git clone https://github.com/dfy5535/bedrock-deepvein.git
```

---

## 如何更新（两段式）

**① 在对应的 MOD 仓库里改** —— 那才是真正的代码所在：

```bash
git clone https://github.com/dfy5535/bedrock-deepvein.git
cd bedrock-deepvein

# 改 behavior_packs/ 或 resource_packs/
# 重新打包到 dist/
# 在 CHANGELOG.md 顶部追加一节，改 README.md 里的版本号

git add -A
git commit -m "feat: v2.2.4 — 一句话说清改了什么"
git tag v2.2.4
git push && git push --tags
```

然后在该仓库的 **Releases** 里为新 tag 附上 `dist/` 的 `.mcaddon`。

**② 回到总仓库，把子模块指针推到新提交**：

```bash
cd minecraft-bedrock-addons

git submodule update --remote mods/deepvein     # 拉到该仓库最新
git add mods/deepvein
git commit -m "chore(deepvein): bump to v2.2.4"
git push
```

> **为什么要这一步？** 子模块记录的是「某个仓库的某个 commit」的指针。
> 不去总仓库 bump，总仓库就还指着旧版本 —— 这正是总仓库「管理」各子仓库的方式。

### 批量检查各 MOD 有没有新提交

```bash
git submodule foreach 'echo "=== $name ===" && git fetch -q && git log --oneline HEAD..origin/main | head -5'
```

---

## 兼容性

| 项 | 说明 |
|---|---|
| **最低目标** | Minecraft Bedrock **1.21.60** |
| **脚本 API 基线** | `@minecraft/server` **1.17.0**（官方映射：`1.17.0 ↔ 1.21.60`） |
| **实测最高** | **1.26.52.3**（全部 MOD 在该版本真机启动、加载、跑通） |
| **向上兼容原理** | 声明 `1.x.x` 的包在「最大化 v1 语义」环境运行 → 1.21.60 与 1.26.x 走**同一条代码路径** |

逐项证据与测试矩阵见 [COMPATIBILITY.md](./COMPATIBILITY.md)。

---

## 发布纪律

每次更新一个 MOD，必须同时：

- [ ] 更换 `header.uuid` 与 `header.version`
- [ ] 出包后核对产物哈希**确实变了**（否则玩家可能装到缓存的旧包）
- [ ] 在 `CHANGELOG.md` 顶部写清「更新了什么」
- [ ] 在 MOD 仓库打 tag 并建 Release
- [ ] 回总仓库 bump 子模块指针

---

## 相关链接

- [Minecraft Creator 文档](https://learn.microsoft.com/minecraft/creator/)
- [官方脚本版本映射](https://learn.microsoft.com/minecraft/creator/documents/scripting/versioning)
- [bedrock-samples](https://github.com/Mojang/bedrock-samples)

---

## 许可证

- **代码与 JSON**：MIT — 见 [LICENSE](./LICENSE)
- **贴图与 3D 模型**：CC-BY-4.0 — 见 [LICENSE-ASSETS.md](./LICENSE-ASSETS.md)
- 各 MOD 原始 manifest 的授权声明见 [NOTICE.md](./NOTICE.md)

使用/转载美术资源时请保留出处。
