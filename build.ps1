$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
    New-Item -ItemType Directory -Path build -Force | Out-Null
    gcc -std=c11 -Wall -Wextra -Wpedantic -Werror -O2 -o build/txc.exe src/main.c src/txc_position.c src/txc_search.c
    if ($LASTEXITCODE -ne 0) { throw 'Executable build failed' }
    gcc -std=c11 -Wall -Wextra -Wpedantic -Werror -O2 -shared -o txc.dll src/txc_position.c src/txc_search.c
    if ($LASTEXITCODE -ne 0) { throw 'Library build failed' }
    Write-Host 'Built build/txc.exe and txc.dll'
} finally { Pop-Location }
