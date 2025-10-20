#!/bin/bash

# CircuitJS1 预览服务器启动脚本

echo "================================"
echo "CircuitJS1 预览服务器"
echo "================================"
echo ""

# 清理可能占用的端口
lsof -ti:8080 2>/dev/null | xargs kill -9 2>/dev/null
lsof -ti:8090 2>/dev/null | xargs kill -9 2>/dev/null
lsof -ti:3000 2>/dev/null | xargs kill -9 2>/dev/null

cd "$(dirname "$0")/war"

# 尝试不同的端口
for PORT in 8080 8090 3000 8888 9000; do
    echo "尝试在端口 $PORT 启动服务器..."

    if python3 -m http.server $PORT > /dev/null 2>&1 &
    then
        SERVER_PID=$!
        sleep 1

        # 检查服务器是否成功启动
        if kill -0 $SERVER_PID 2>/dev/null; then
            echo ""
            echo "✅ 服务器成功启动！"
            echo ""
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            echo "  在浏览器中访问："
            echo "  http://localhost:$PORT/circuitjs.html"
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            echo ""
            echo "按 Ctrl+C 停止服务器"
            echo ""

            # 保持服务器运行
            wait $SERVER_PID
            exit 0
        fi
    fi
done

echo "❌ 无法启动服务器，所有端口都被占用"
echo ""
echo "你可以尝试："
echo "1. 直接在浏览器中打开文件："
echo "   file://$(pwd)/circuitjs.html"
echo ""
echo "2. 手动指定端口："
echo "   python3 -m http.server 8888"
