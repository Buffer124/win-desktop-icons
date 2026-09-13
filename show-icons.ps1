$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"

if (-not (Test-Path $path)) {
    New-Item -Path $path -Force | Out-Null
}

$icons = @{
    "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" = 0  # This PC
    "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" = 0  # User Files
    "{645FF040-5081-101B-9F08-00AA002F954E}" = 0  # Recycle Bin
    "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" = 0  # Control Panel
    "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" = 0  # Network
}

foreach ($guid in $icons.Keys) {
    Set-ItemProperty -Path $path -Name $guid -Value $icons[$guid] -Type DWord
}

Stop-Process -Name explorer -Force
