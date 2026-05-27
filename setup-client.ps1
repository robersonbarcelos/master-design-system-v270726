# setup-client.ps1
# Cria a estrutura de pasta para um novo cliente no Production System
#
# Uso:
#   .\setup-client.ps1 -Nome "joao-silva"
#   .\setup-client.ps1 -Nome "clinica-dra-ana"
#
# O nome deve ser em kebab-case (minusculas, sem espacos, sem acentos)

param(
    [Parameter(Mandatory=$true)]
    [string]$Nome
)

$BaseDir = $PSScriptRoot
$TemplateDir = Join-Path $BaseDir "clients\_template"
$ClientDir = Join-Path $BaseDir "clients\$Nome"

# Verifica se o cliente ja existe
if (Test-Path $ClientDir) {
    Write-Host "Cliente '$Nome' ja existe em: $ClientDir" -ForegroundColor Yellow
    Write-Host "Abra a pasta no Claude Code para continuar." -ForegroundColor Yellow
    exit 0
}

# Cria a estrutura de pastas
Write-Host "Criando cliente: $Nome" -ForegroundColor Cyan

New-Item -ItemType Directory -Path $ClientDir -Force | Out-Null
New-Item -ItemType Directory -Path "$ClientDir\.agents" -Force | Out-Null
New-Item -ItemType Directory -Path "$ClientDir\runs" -Force | Out-Null

# Cria subpastas
New-Item -ItemType Directory -Path "$ClientDir\references" -Force | Out-Null

# Copia os templates
Copy-Item "$TemplateDir\.agents\social-media-context-sms.md" "$ClientDir\.agents\social-media-context-sms.md"
Copy-Item "$TemplateDir\brand-spec.md"                        "$ClientDir\brand-spec.md"
Copy-Item "$TemplateDir\DESIGN.md"                            "$ClientDir\DESIGN.md"
Copy-Item "$TemplateDir\CLAUDE.md"                            "$ClientDir\CLAUDE.md"
Copy-Item "$TemplateDir\production-rules.md"                  "$ClientDir\production-rules.md"
Copy-Item "$TemplateDir\content-system.md"                    "$ClientDir\content-system.md"
Copy-Item "$TemplateDir\visual-system.md"                     "$ClientDir\visual-system.md"
Copy-Item "$TemplateDir\references\copies-aprovadas.md"       "$ClientDir\references\copies-aprovadas.md"
Copy-Item "$TemplateDir\references\dados-ancora.md"           "$ClientDir\references\dados-ancora.md"
Copy-Item "$TemplateDir\references\temas.md"                  "$ClientDir\references\temas.md"

# Substitui o placeholder pelo nome do cliente
$NomeFormatado = (Get-Culture).TextInfo.ToTitleCase($Nome.Replace("-", " "))

$filesToReplace = @(
    "$ClientDir\CLAUDE.md",
    "$ClientDir\.agents\social-media-context-sms.md",
    "$ClientDir\brand-spec.md",
    "$ClientDir\DESIGN.md",
    "$ClientDir\production-rules.md",
    "$ClientDir\content-system.md",
    "$ClientDir\visual-system.md",
    "$ClientDir\references\copies-aprovadas.md",
    "$ClientDir\references\dados-ancora.md",
    "$ClientDir\references\temas.md"
)

foreach ($f in $filesToReplace) {
    (Get-Content $f) -replace '\[NOME DO CLIENTE\]', $NomeFormatado | Set-Content $f
}

Write-Host ""
Write-Host "Estrutura criada com sucesso:" -ForegroundColor Green
Write-Host "  clients\$Nome\" -ForegroundColor White
Write-Host "    .agents\social-media-context-sms.md" -ForegroundColor Gray
Write-Host "    brand-spec.md" -ForegroundColor Gray
Write-Host "    DESIGN.md" -ForegroundColor Gray
Write-Host "    CLAUDE.md" -ForegroundColor Gray
Write-Host "    production-rules.md" -ForegroundColor Gray
Write-Host "    content-system.md" -ForegroundColor Gray
Write-Host "    visual-system.md" -ForegroundColor Gray
Write-Host "    references\copies-aprovadas.md" -ForegroundColor Gray
Write-Host "    references\dados-ancora.md" -ForegroundColor Gray
Write-Host "    references\temas.md" -ForegroundColor Gray
Write-Host "    runs\" -ForegroundColor Gray
Write-Host ""
Write-Host "Proximo passo:" -ForegroundColor Cyan
Write-Host "  Abra a pasta 'clients\$Nome' no Claude Code" -ForegroundColor White
Write-Host "  Claude vai iniciar o onboarding automaticamente." -ForegroundColor White
