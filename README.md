# 面试八股文（Mintlify 文档站）

个人面试背诵与复习用的技术八股文，基于 [Mintlify](https://mintlify.com) 构建，便于本地阅读和部署。

## 环境要求

- **Node.js >= 20.17**（必须，否则 `mint dev` 会报错）

当前若为 Node 18，需先升级再运行。

### Windows 上升级 Node.js

**方式一：官网安装包（推荐）**

1. 打开 [Node.js 官网](https://nodejs.org)，下载 **LTS 版本**（如 20.x 或 22.x）。
2. 运行安装程序，按提示安装（会覆盖旧版本）。
3. 新开终端执行 `node -v`，应显示 `v20.x.x` 或更高。

**方式二：使用 nvm-windows（多版本切换）**

若已安装 [nvm-windows](https://github.com/coreybutler/nvm-windows)：

```bash
nvm install 20
nvm use 20
node -v   # 确认 >= 20.17
```

## 本地预览

**若本机同时装了 Node 18 和 Node 20+，且终端里默认是 18**，可直接用项目里的脚本（会优先用新 Node 再启动）：

```powershell
# 在项目根目录执行
.\mint-dev.ps1
```

或手动指定新 Node 再启动（把下面路径改成你新 Node 的实际安装目录）：

```powershell
$env:Path = "D:\Program Files\All Application\Node.js;" + $env:Path
mint dev
```

否则在项目根目录执行：

```bash
# 首次或未装过时安装 Mintlify CLI（需 Node >= 20.17）
npm i -g mint

# 启动本地预览
mint dev
```

浏览器打开 **http://localhost:3000** 查看文档。

## 故障排除

- **`mint dev is not supported on node versions below 20.17`**：请将 Node.js 升级到 20.17 或以上（见上方「环境要求」）。
- 本地预览起不来：可先执行 `mint update` 更新 CLI。
- 页面 404：确认在包含 `docs.json` 的项目根目录下执行 `mint dev`。

## 发布与资源

- 若使用 Mintlify 托管，可在 [dashboard](https://dashboard.mintlify.com) 安装 GitHub 应用，推送后自动部署。
- [Mintlify 文档](https://mintlify.com/docs)
