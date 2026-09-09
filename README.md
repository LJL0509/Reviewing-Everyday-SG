# 拾光 · 日复盘

一个纯静态、本地优先的日复盘工具。记录保存在浏览器 `localStorage` 中，不需要后端数据库。

## 本地预览

双击 `打开日复盘预览.bat`，或访问 `http://localhost:4173/`。

## 发布为稳定网址

推荐使用 GitHub Pages：

1. 在 GitHub 新建一个仓库，例如 `Reviewing-Everyday`。
2. 将本目录全部文件推送到仓库的 `main` 分支。
3. 在仓库的 **Settings → Pages** 中，将 **Source** 设置为 **GitHub Actions**。这一步必须先完成，否则 `Configure Pages` 会返回 `Not Found`。
4. 在 **Settings → Actions → General** 中确认允许 Actions 运行，并等待 Actions 完成。
5. 网址格式为：`https://你的用户名.github.io/Reviewing-Everyday-SG/`。

仓库已包含 `.github/workflows/pages.yml`，推送后会自动部署。之后每次推送到 `main`，网址都会自动更新。

## 数据说明

复盘内容只保存在当前浏览器和当前设备中。发布网页不会把历史记录同步到 GitHub，也不会上传到服务器。更换设备或浏览器前，请使用页面中的导出功能备份数据。
