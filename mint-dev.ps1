# 优先使用新 Node（20+）再启动 mint dev，避免 PATH 里旧 Node 18 优先生效
$newNode = "D:\Program Files\All Application\Node.js"
$env:Path = "$newNode;" + $env:Path

$nodeVer = & node -v 2>&1
Write-Host "当前 Node: $nodeVer" -ForegroundColor Cyan
if ($nodeVer -match "^v(\d+)\.(\d+)") {
    $major = [int]$matches[1]
    if ($major -lt 20) {
        Write-Host "错误: mint dev 需要 Node >= 20.17，当前为 $nodeVer。请确认新 Node 已安装在: $newNode" -ForegroundColor Red
        exit 1
    }
}

Write-Host "启动 mint dev ..." -ForegroundColor Green
& mint dev
