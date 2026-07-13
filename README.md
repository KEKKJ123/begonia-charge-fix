# 充电温控阈值提高模块

本模块通过覆盖 `thermal-chg-only.conf`，并在启动后停止小米温控守护进程 `mi_thermald`，以减轻充电过程中的过早限流问题。

## 已测试环境
- 设备：Redmi Note 8 Pro / begonia
- 系统：LineageOS 20
- Root 环境：SukiSU-Ultra

## 适用范围
理论上可用于 KernelSU / SukiSU / Magisk 环境，但尚未在其他设备或 ROM 上充分测试。

## 注意事项
本模块为个人自用项目，尚未在其他平台进行完整验证。  
修改系统温控与充电策略存在风险，可能导致发热升高、充电行为异常，甚至影响设备稳定性。请自行评估并承担后果。

## 安装
1. 从 Release 下载最新版本
2. 通过 KernelSU / Magisk / SukiSU 安装模块
3. 重启设备

## 卸载
在管理器中移除本模块后重启设备。

## 功能
- 覆盖充电场景温控配置
- 尝试降低充电过程中的限流频率
- 在 `service.sh` 可选停止 `mi_thermald`