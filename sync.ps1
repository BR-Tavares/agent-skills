# sync.ps1 - Backup e sincronização do repositório no GitHub (Uso como cofre/backup remoto)
param(
    [ValidateSet("push", "pull", "status")]
    [string]$Action = "status",
    [string]$Message = ""
)

$repoRoot = $PSScriptRoot
Set-Location $repoRoot

switch ($Action) {
    "status" {
        Write-Host "Verificando diferencas com o GitHub remoto..." -ForegroundColor Cyan
        git fetch origin
        git status
    }
    "pull" {
        Write-Host "Puxando atualizacoes do GitHub remoto para esta maquina..." -ForegroundColor Cyan
        git pull origin main
    }
    "push" {
        if ([string]::IsNullOrWhiteSpace($Message)) {
            $Message = "docs/skills: backup de skills locais ($(Get-Date -Format 'yyyy-MM-dd HH:mm'))"
        }
        Write-Host "Enviando backup das skills locais para o GitHub..." -ForegroundColor Cyan
        git add -A
        git commit -m "$Message"
        git push origin main
    }
}
