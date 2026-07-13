#!/system/bin/sh

# 等待系统完全启动
sleep 20

# 1. 停止小米温控守护进程
stop mi_thermald
killall mi_thermald 2>/dev/null

# 2. 停止可能存在的其他小米温控服务（可选）
# stop thermalloadalgod
# killall thermalloadalgod 2>/dev/null

# 3. 再次确认，防止被系统重新拉起
sleep 10
stop mi_thermald