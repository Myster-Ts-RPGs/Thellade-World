$base = Get-Location
Get-ChildItem -Directory -Recurse | ForEach-Object { Resolve-Path $_.FullName -Relative } | Out-File "DirectoryList.txt"