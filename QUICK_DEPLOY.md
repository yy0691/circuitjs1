# 🚀 Vercel 快速部署指南

## ✅ 文件已准备好

所有Vercel部署文件已创建：

```
project/
├── vercel.json        ✅ Vercel配置（路由和构建）
├── .vercelignore      ✅ 忽略src/等大文件
└── war/
    ├── index.html     ✅ 主页（iframe版电路仿真器）
    ├── ui-demo.html   ✅ UI演示
    └── ...            ✅ 其他HTML文件
```

---

## 📋 重要说明

### 直接导入整个仓库 ✨

**你不需要单独导入war目录！**

原因：
- `vercel.json` 配置了只构建 `war/**`
- `.vercelignore` 排除了 `src/`（1.8MB）
- 实际部署大小：75KB

---

## 🚀 三种部署方式

### 方式1：Vercel CLI（最快）

```bash
# 1. 安装Vercel CLI（如果还没安装）
npm install -g vercel

# 2. 登录
vercel login

# 3. 部署
cd /tmp/cc-agent/58941244/project
vercel --prod
```

### 方式2：GitHub + Vercel（推荐）

```bash
# 1. 初始化Git
git init
git add .
git commit -m "CircuitJS1 with minimal UI"

# 2. 推送到GitHub
git remote add origin https://github.com/你的用户名/circuitjs1.git
git push -u origin main

# 3. 在Vercel导入
# 访问 https://vercel.com/new
# 选择你的GitHub仓库
# Vercel自动检测配置并部署
```

### 方式3：Vercel 网站上传

```
1. 访问 https://vercel.com/new
2. 选择 "Upload" 或拖拽项目文件夹
3. Vercel自动处理
```

---

## 🎯 部署后访问

```
https://your-project.vercel.app/
  ├── /              → 电路仿真器（iframe版本）
  ├── /ui-demo.html  → UI演示页面
  └── /about.html    → 关于页面
```

---

## ⚠️ 当前使用iframe方案

由于项目缺少 `war/circuitjs1/` 编译后的JavaScript：
- ✅ 使用iframe嵌入官方版本
- ✅ 立即可用，无需编译
- ✅ 自动获取最新版本

如需完全独立版本，参考项目中的 `VERCEL_DEPLOY.md`

---

## 📊 部署大小

```
上传大小：2.0 MB（整个项目）
实际部署：75 KB（只有war目录）
```

---

## 🆘 问题排查

### 部署失败？

检查：
1. `vercel.json` 在项目根目录
2. `war/index.html` 存在
3. 查看部署日志：`vercel logs`

### 页面空白？

1. F12查看浏览器控制台错误
2. 确认iframe没有被阻止
3. 刷新页面重试

---

## ✨ 就这么简单！

所有配置已完成，现在就可以部署了：

```bash
cd /tmp/cc-agent/58941244/project
vercel --prod
```

祝部署顺利！🎉
