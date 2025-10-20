#!/bin/bash

# 恢复自定义UI文件
# 在GWT构建后运行此脚本

echo "🔄 恢复自定义UI文件..."

# 检查备份目录
if [ ! -d "ui-backup" ]; then
    echo "❌ 错误：找不到 ui-backup/ 目录"
    echo "请先运行 bash BACKUP_UI.sh"
    exit 1
fi

# 恢复 index.html
if [ -f "ui-backup/index.html" ]; then
    cp ui-backup/index.html war/index.html
    echo "✅ 已恢复 war/index.html"
fi

# 恢复 vercel.json
if [ -f "ui-backup/vercel.json" ]; then
    cp ui-backup/vercel.json vercel.json
    echo "✅ 已恢复 vercel.json"
fi

# 恢复 .vercelignore
if [ -f "ui-backup/.vercelignore" ]; then
    cp ui-backup/.vercelignore .vercelignore
    echo "✅ 已恢复 .vercelignore"
fi

echo ""
echo "✨ 恢复完成！现代UI主题已还原"
echo ""
echo "提交更改："
echo "  git add war/index.html vercel.json .vercelignore"
echo "  git commit -m 'Restore modern UI after rebuild'"
