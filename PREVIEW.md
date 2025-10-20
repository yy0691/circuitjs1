# UI 预览指南

## 关于UI更改

### ✅ 已经生效的更改

我修改的文件在 `war/` 目录下，这些是**静态文件**，不需要重新编译：

1. **war/circuitjs.html** - 主应用样式（最重要）
2. **war/about.html** - 关于页面
3. **war/iframe.html** - iframe面板
4. **war/customlogic.html** - 自定义逻辑帮助
5. **war/customfunction.html** - 自定义函数帮助
6. **war/subcircuits.html** - 子电路帮助
7. **war/crystal.html** - 晶体参数计算器
8. **war/diodecalc.html** - 二极管模型计算器
9. **app/index.html** - Electron应用启动页

### 🎨 UI风格特点

**黑白简约设计**：
- 纯黑白灰配色
- 极小圆角（2-4px）
- 快速过渡（0.15s）
- 无阴影效果
- 选中状态：黑底白字
- 悬停状态：浅灰背景

## 预览方法

### 方法1: 直接用浏览器打开（最简单）

```bash
# 在项目的 war 目录中，直接用浏览器打开
open war/circuitjs.html
# 或
firefox war/circuitjs.html
# 或
chrome war/circuitjs.html
```

**注意**：某些功能可能需要HTTP服务器才能正常工作

### 方法2: 启动本地HTTP服务器

```bash
cd war
python3 -m http.server 8080
# 然后在浏览器访问: http://localhost:8080/circuitjs.html
```

或使用Node.js：
```bash
cd war
npx serve
```

### 方法3: 查看个别页面

你可以直接在浏览器中打开任何HTML文件查看样式：

```bash
# 查看关于页面
open war/about.html

# 查看帮助页面
open war/customlogic.html

# 查看计算器
open war/diodecalc.html
```

## 完整构建（可选）

如果你想进行完整的GWT编译（编译Java代码为JavaScript）：

### 需要的工具
- Eclipse IDE (Oxygen版本)
- GWT Plugin for Eclipse

### 构建步骤
1. 在Eclipse中打开项目
2. 选择项目根节点
3. 点击GWT工具栏按钮
4. 选择 "GWT Compile Project..."
5. 编译完成后，输出在 `war/circuitjs1/` 目录

### ⚠️ 重要说明

**你不需要重新编译就能看到UI更改！**

我修改的都是CSS样式文件，这些文件是：
- 直接被浏览器读取
- 不经过GWT编译过程
- 立即生效

只有当你修改Java源代码（`.java`文件）时，才需要用Eclipse进行GWT编译。

## 验证UI更改

打开 `war/circuitjs.html` 后，你应该看到：

✓ **顶部菜单栏**：白色背景，浅灰底边框
✓ **按钮**：白色背景，浅灰边框，悬停变浅灰
✓ **选中按钮**：黑色背景，白色文字
✓ **输入框**：浅灰边框，聚焦时变黑色边框
✓ **整体感觉**：干净、简约、黑白分明

## Electron应用预览

如果要预览Electron桌面应用：

```bash
cd app
npm install  # 如果还没安装依赖
npm start    # 启动Electron应用
```

你会看到一个极简的黑白欢迎界面。

## 问题排查

### 样式没有变化？
1. 确保浏览器没有缓存旧的CSS（按 Ctrl+Shift+R 强制刷新）
2. 检查浏览器控制台是否有CSS加载错误
3. 确认你打开的是 `war/circuitjs.html` 而不是其他位置的副本

### 功能不工作？
- 某些功能（如加载电路）需要HTTP服务器
- 使用方法2启动本地服务器

## 文件对比

如果你想对比更改，原始的蓝紫色UI已经被完全替换为黑白简约风格。

主要变化在 `war/circuitjs.html` 的 `<style>` 标签中：
- 原来：蓝色主题色（#3b82f6）
- 现在：纯黑色（#000000）

享受新的简约UI！ 🎨
