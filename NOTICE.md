# 授权状况说明（NOTICE）

本仓库整体采用 **MIT（代码）+ CC-BY-4.0（美术资源）**，见 [LICENSE](./LICENSE) 与 [LICENSE-ASSETS](./LICENSE-ASSETS)。

下表是各 MOD **原始 manifest 里写的授权字段**，原样记录以便追溯。
如果你是本仓库所有者并希望调整某个 MOD 的授权，改 manifest 的 `metadata.license` 并同步更新本表即可。

| MOD | 原始 manifest 声明 | 说明 |
|---|---|---|
| 深层矿脉 DeepVein | （未声明） | 按本仓库许可证执行 |
| 僵尸纪元 Zombie Evolution | （未声明） | 按本仓库许可证执行 |
| 万象天平 LuckyBlock | RP: `CC-BY-4.0` / BP: （未声明） | 与仓库一致 |
| 幸运四叶草 LuckyClover | （未声明） | 按本仓库许可证执行 |
| 矿物果树 OreTrees | （未声明） | 按本仓库许可证执行 |
| **战斗高塔 BattleTowers** | **`internal`** | ⚠️ **待确认**：见下 |
| 野外随机生成框架 RSF | BP: `CC-BY-4.0` / RP: （未声明） | 与仓库一致 |

## ⚠️ 战斗高塔（BattleTowers）待确认

`mods/battletowers/behavior_packs/kira_towerworks_bp/manifest.json` 与对应资源包的 `metadata.license`
写的是 **`"internal"`**，而不是任何开源许可。

- 本仓库**没有擅自改写**这个字段。
- 如果该 MOD 确实不打算公开，请把它从 `mods/` 移除，并同步更新根 README 的列表。
- 如果打算公开，建议把两处 `"internal"` 改为 `"CC-BY-4.0"`（或你指定的许可），并重新打包 `dist/` 里的产物。

## 第三方内容

- Minecraft 原版素材（`minecraft:*` 引用的贴图/模型/音效）版权归 **Mojang Studios / Microsoft**。
- 本仓库只包含作者原创的扩展内容，不包含任何原版素材副本。
- 引用原版资源属于正常 Add-on 开发方式，不构成对原版素材的再分发。
