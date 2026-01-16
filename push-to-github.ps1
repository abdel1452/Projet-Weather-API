# Script pour pousser le projet sur GitHub
# Usage: .\push-to-github.ps1

Write-Host "🚀 Configuration Git pour push sur GitHub" -ForegroundColor Cyan
Write-Host ""

# Vérifier si Git est installé
try {
    $gitVersion = git --version
    Write-Host "✅ Git détecté: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git n'est pas installé. Installez Git depuis https://git-scm.com/" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "📋 Instructions:" -ForegroundColor Yellow
Write-Host "1. Créez un nouveau dépôt sur GitHub (https://github.com/new)" -ForegroundColor White
Write-Host "2. Copiez l'URL de votre dépôt (ex: https://github.com/votre-username/nom-du-repo.git)" -ForegroundColor White
Write-Host ""

# Demander l'URL du dépôt
$repoUrl = Read-Host "Entrez l'URL de votre dépôt GitHub"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "❌ URL vide. Opération annulée." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "🔗 Configuration du remote..." -ForegroundColor Cyan

# Vérifier si un remote existe déjà
$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "⚠️  Un remote 'origin' existe déjà: $existingRemote" -ForegroundColor Yellow
    $replace = Read-Host "Voulez-vous le remplacer? (o/n)"
    if ($replace -eq "o" -or $replace -eq "O") {
        git remote set-url origin $repoUrl
        Write-Host "✅ Remote mis à jour" -ForegroundColor Green
    } else {
        Write-Host "Opération annulée." -ForegroundColor Yellow
        exit 0
    }
} else {
    git remote add origin $repoUrl
    Write-Host "✅ Remote ajouté" -ForegroundColor Green
}

Write-Host ""
Write-Host "🌿 Vérification de la branche..." -ForegroundColor Cyan
$currentBranch = git branch --show-current
Write-Host "Branche actuelle: $currentBranch" -ForegroundColor White

if ($currentBranch -ne "main") {
    Write-Host "Renommage de la branche en 'main'..." -ForegroundColor Yellow
    git branch -M main
    Write-Host "✅ Branche renommée" -ForegroundColor Green
}

Write-Host ""
Write-Host "📤 Push vers GitHub..." -ForegroundColor Cyan
Write-Host "Vous devrez peut-être vous authentifier..." -ForegroundColor Yellow
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ Succès! Votre code a été poussé sur GitHub!" -ForegroundColor Green
    Write-Host "🌐 Votre dépôt: $repoUrl" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "❌ Erreur lors du push." -ForegroundColor Red
    Write-Host "Vérifiez:" -ForegroundColor Yellow
    Write-Host "- Que l'URL du dépôt est correcte" -ForegroundColor White
    Write-Host "- Que vous êtes authentifié (token GitHub)" -ForegroundColor White
    Write-Host "- Que le dépôt existe sur GitHub" -ForegroundColor White
}
