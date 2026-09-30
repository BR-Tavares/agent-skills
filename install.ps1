# install.ps1 - Configuração de Skills para Antigravity, Claude Code e Codex
[CmdletBinding()]
param()

$repoRoot = $PSScriptRoot
$skillsDir = Join-Path $repoRoot "skills"

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  Instalacao de Agent Skills Multimodelo" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

$destinations = @(
    @{ Name = "Codex / Universal";    Path = [System.IO.Path]::Combine($HOME, ".agents", "skills") },
    @{ Name = "Claude Code";          Path = [System.IO.Path]::Combine($HOME, ".claude", "skills") },
    @{ Name = "Gemini / Antigravity"; Path = [System.IO.Path]::Combine($HOME, ".gemini", "antigravity", "skills") }
)

$skills = Get-ChildItem -Path $skillsDir -Directory

foreach ($dest in $destinations) {
    Write-Host "`nConfigurando para: $($dest.Name)" -ForegroundColor Yellow
    if (-not (Test-Path -Path $dest.Path)) {
        New-Item -ItemType Directory -Path $dest.Path -Force | Out-Null
        Write-Host "  [+] Criado diretorio: $($dest.Path)" -ForegroundColor Green
    }

    foreach ($skill in $skills) {
        $skillName = $skill.Name
        $skillMd = Join-Path $skill.FullName "SKILL.md"
        if (Test-Path $skillMd) {
            $content = Get-Content -Path $skillMd -Raw
            if ($content -match '(?m)^name:\s*["'']?([^"''\r\n]+)["'']?') {
                $skillName = $matches[1].Trim()
            }
        }

        $linkPath = Join-Path $dest.Path $skillName
        $targetPath = $skill.FullName

        if (Test-Path -Path $linkPath) {
            $item = Get-Item $linkPath -Force
            if ($item.Attributes -match "ReparsePoint") {
                Write-Host "  [i] Juncao ja existe para: $skillName" -ForegroundColor Gray
                continue
            } else {
                $backupPath = "$linkPath.bak_$(Get-Date -Format 'yyyyMMddHHmmss')"
                Write-Host "  [!] Diretorio preexistente. Backup em: $backupPath" -ForegroundColor Yellow
                Move-Item -Path $linkPath -Destination $backupPath -Force
            }
        }

        New-Item -ItemType Junction -Path $linkPath -Target $targetPath | Out-Null
        Write-Host "  [OK] Vinculado: $skillName -> $targetPath" -ForegroundColor Green
    }
}

Write-Host "`nTodas as 3 IAs estao sincronizadas com o repositorio local!" -ForegroundColor Green
