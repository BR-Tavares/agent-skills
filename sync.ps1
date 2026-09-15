# sync.ps1 - Sincronização rápida com o GitHub
param(
    [ValidateSet("push", "pull", "status")]
    [string]$Action = "status",
    [string]$Message = "chore(skill): atualizar analista-sistemas-senior"
)

$repoRoot = $PSScriptRoot
Set-Location $repoRoot

switch ($Action) {
    "status" {
        Write-Host "Verificando status do repositorio..." -ForegroundColor Cyan
        git fetch origin
        git status
    }
    "pull" {
        Write-Host "Baixando atualizacoes do GitHub..." -ForegroundColor Cyan
        git pull origin main
    }
    "push" {
        Write-Host "Enviando alteracoes para o GitHub..." -ForegroundColor Cyan
        git add -A
        git commit -m "$Message"
        git push origin main
    }
}
