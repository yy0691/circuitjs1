#!/bin/bash

# 备份自定义UI文件
# 在GWT重新构建前运行此脚本

echo "🔄 备份自定义UI文件..."

# 创建备份目录
mkdir -p ui-backup

# 备份 index.html
if [ -f "war/index.html" ]; then
    cp war/index.html ui-backup/index.html
    echo "✅ 已备份 war/index.html"
fi

# 备份 vercel.json
if [ -f "vercel.json" ]; then
    cp vercel.json ui-backup/vercel.json
    echo "✅ 已备份 vercel.json"
fi

# 备份 .vercelignore
if [ -f ".vercelignore" ]; then
    cp .vercelignore ui-backup/.vercelignore
    echo "✅ 已备份 .vercelignore"
fi

echo ""
echo "📦 备份完成！文件保存在 ui-backup/ 目录"
echo ""
echo "构建后恢复："
echo "  bash RESTORE_UI.sh"
