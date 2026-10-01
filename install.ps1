# install.ps1 - Espelhamento Local de Skills para Antigravity, Claude Code e OpenAI Codex
[CmdletBinding()]
param()

$repoRoot = $PSScriptRoot
$skillsDir = Join-Path $repoRoot "skills"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  Espelhamento Local de Agent Skills (Zero Latencia)" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# Diretórios locais dos 3 ecossistemas de agentes no Windows
$destinations = @(
    @{ Name = "OpenAI Codex CLI";          Path = [System.IO.Path]::Combine($HOME, ".codex", "skills") },
    @{ Name = "Claude Code";               Path = [System.IO.Path]::Combine($HOME, ".claude", "skills") },
    @{ Name = "Gemini / Antigravity";      Path = [System.IO.Path]::Combine($HOME, ".gemini", "antigravity", "skills") },
    @{ Name = "Universal / Codex Fallback"; Path = [System.IO.Path]::Combine($HOME, ".agents", "skills") }
)

$skills = Get-ChildItem -Path $skillsDir -Directory

foreach ($dest in $destinations) {
    Write-Host "`nConfigurando ambiente local: $($dest.Name)" -ForegroundColor Yellow
    Write-Host "  Caminho: $($dest.Path)" -ForegroundColor DarkGray

    if (-not (Test-Path -Path $dest.Path)) {
        New-Item -ItemType Directory -Path $dest.Path -Force | Out-Null
        Write-Host "  [+] Criado diretorio base: $($dest.Path)" -ForegroundColor Green
    }

    foreach ($skill in $skills) {
        $targetPath = $skill.FullName

        # Coletar identificadores (nome da pasta e nome definido no SKILL.md se houver)
        $aliases = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
        [void]$aliases.Add($skill.Name)

        $skillMd = Join-Path $skill.FullName "SKILL.md"
        if (Test-Path $skillMd) {
            $content = Get-Content -Path $skillMd -Raw
            if ($content -match '(?m)^name:\s*["'']?([^"''\r\n]+)["'']?') {
                $yamlName = $matches[1].Trim()
                if (-not [string]::IsNullOrWhiteSpace($yamlName)) {
                    [void]$aliases.Add($yamlName)
                }
            }
        }

        foreach ($alias in $aliases) {
            $linkPath = Join-Path $dest.Path $alias

            if (Test-Path -Path $linkPath) {
                $item = Get-Item $linkPath -Force
                if ($item.Attributes -match "ReparsePoint") {
                    # Junção existente
                    Write-Host "  [i] Juncao ativa: $alias -> $targetPath" -ForegroundColor DarkCyan
                    continue
                } else {
                    $backupPath = "$linkPath.bak_$(Get-Date -Format 'yyyyMMddHHmmss')"
                    Write-Host "  [!] Pasta fisica preexistente detectada. Backup em: $backupPath" -ForegroundColor Yellow
                    Move-Item -Path $linkPath -Destination $backupPath -Force
                }
            }

            New-Item -ItemType Junction -Path $linkPath -Target $targetPath | Out-Null
            Write-Host "  [OK] Vinculado com sucesso: $alias" -ForegroundColor Green
        }
    }
}

Write-Host "`n==========================================================" -ForegroundColor Green
Write-Host "  Todas as IAs estao espelhadas diretamente neste workspace!" -ForegroundColor Green
Write-Host "  Qualquer alteracao em 'skills/' tem efeito imediato nos CLIs." -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
