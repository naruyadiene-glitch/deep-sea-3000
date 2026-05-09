#!/bin/bash
# Vercel部署脚本 - Deep Sea 3000

echo "🌊 深海三千里 - Vercel 部署脚本"
echo "================================"
echo ""

# 检查vercel是否安装
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI 未安装"
    echo "请运行: npm install -g vercel"
    exit 1
fi

echo "✅ Vercel CLI 已安装"
echo ""

# 登录检查
echo "📝 检查登录状态..."
vercel whoami
if [ $? -ne 0 ]; then
    echo "❌ 请先登录: vercel login"
    exit 1
fi

echo ""
echo "🚀 开始部署..."
echo ""

# 部署
cd "$(dirname "$0")"
vercel --prod

echo ""
echo "✅ 部署完成！"
