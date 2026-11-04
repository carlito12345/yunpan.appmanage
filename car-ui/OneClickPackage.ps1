param(
    [string]$Package,
    [string]$InputApk,
    [string]$Icon,
    [string]$KeyFile,
    [switch]$ChooseBase,
    [switch]$NoPrompt
)
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$localFile = Join-Path $root 'repackage.local.json'
$configFile = if (Test-Path -LiteralPath $localFile) { $localFile } else { Join-Path $root 'repackage.example.json' }
$config = Get-Content -LiteralPath $configFile -Raw -Encoding UTF8 | ConvertFrom-Json
function FullPath([string]$value) {
    if ([string]::IsNullOrWhiteSpace($value)) { return '' }
    if ([IO.Path]::IsPathRooted($value)) { return [IO.Path]::GetFullPath($value) }
    return [IO.Path]::GetFullPath((Join-Path $root $value))
}
function PickFile([string]$title, [string]$filter, [string]$value) {
    $path = FullPath $value
    if ($path -and (Test-Path -LiteralPath $path -PathType Leaf)) { return $path }
    if ($NoPrompt) { throw "$title 未配置或文件不存在：$path" }
    Add-Type -AssemblyName System.Windows.Forms
    $dialog = New-Object System.Windows.Forms.OpenFileDialog
    $dialog.Title = $title; $dialog.Filter = $filter; $dialog.CheckFileExists = $true
    if ($dialog.ShowDialog() -ne [System.Windows.Forms.DialogResult]::OK) { throw '已取消，未开始生成。' }
    $selected = $dialog.FileName; $dialog.Dispose(); return $selected
}
if (-not $Package) {
    if ($NoPrompt) { $Package = $config.package }
    else {
        Add-Type -AssemblyName Microsoft.VisualBasic
        $Package = [Microsoft.VisualBasic.Interaction]::InputBox('输入目标包名；多个包名用逗号分隔。','应用管家 · 包名与图标定制',$config.package)
        if ([string]::IsNullOrWhiteSpace($Package)) { return }
    }
}
$baseApk = PickFile '选择新版兼容版或未加固基础APK' 'Android APK (*.apk)|*.apk' $(if ($InputApk) { $InputApk } elseif ($ChooseBase) { '' } else { $config.input_apk })
$iconFile = PickFile '选择App图标' '图标 (*.png;*.jpg;*.jpeg;*.webp;*.zip)|*.png;*.jpg;*.jpeg;*.webp;*.zip' $(if ($Icon) { $Icon } else { $config.icon })
$keyPath = PickFile '选择公签私钥 platform.pk8（仅本机使用）' 'PKCS8私钥 (*.pk8)|*.pk8|所有文件 (*.*)|*.*' $(if ($KeyFile) { $KeyFile } else { $config.key_file })
$certificate = PickFile '选择公钥证书 platform.x509.pem' '公钥证书 (*.pem)|*.pem' $config.certificate
$outputFolder = FullPath $config.output_dir
$pythonCandidates = @($config.python, (Join-Path $env:USERPROFILE '.cache/codex-runtimes/codex-primary-runtime/dependencies/python/python.exe'))
$pythonCommand = Get-Command python -ErrorAction SilentlyContinue
if ($pythonCommand) { $pythonCandidates += $pythonCommand.Source }
$pythonExe = $pythonCandidates | Where-Object { $_ -and (Test-Path -LiteralPath $_ -PathType Leaf) } | Select-Object -First 1
if (-not $pythonExe) { throw '需要Python 3；可在repackage.local.json的python字段指定python.exe。' }
$arguments = @((Join-Path $root 'repackage_apk.py'), '--input', $baseApk, '--key', $keyPath, '--cert', $certificate, '--icon', $iconFile, '--output-dir', $outputFolder)
$packages = $Package -split '[,;，；\s]+' | Where-Object { $_ }
foreach ($name in $packages) { $arguments += @('--package', $name) }
if ($config.protect) { $arguments += '--protect' }
if ($config.java_home) { $arguments += @('--java-home', (FullPath $config.java_home)) }
if ($config.android_sdk) { $arguments += @('--android-sdk', (FullPath $config.android_sdk)) }
$env:PYTHONIOENCODING = 'utf-8'
Write-Host "基础APK：$baseApk"
Write-Host "目标包名：$($packages -join ', ')"
& $pythonExe @arguments
if ($LASTEXITCODE -ne 0) { throw '生成失败，请查看上方错误。基础APK未被修改。' }
$config.package = $Package; $config.input_apk = $baseApk; $config.icon = $iconFile; $config.key_file = $keyPath; $config.certificate = $certificate
$config | ConvertTo-Json | Set-Content -LiteralPath $localFile -Encoding UTF8
Write-Host "完成。安装包和校验报告位于：$outputFolder" -ForegroundColor Green
if (-not $NoPrompt) { Invoke-Item -LiteralPath $outputFolder }
