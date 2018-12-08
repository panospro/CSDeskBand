$srcDir = $PSScriptRoot + "/../src/CSDeskBand"
$alldirs = $srcDir, ($srcDir + "/Interop"), ($srcDir + "/ContextMenu")
$alldirs | ForEach-Object { $sourceFiles += Get-ChildItem -Path $_ -File -Filter "*.cs" }

if (!$args[0]) {
    Write-Error "Missing output directory"
    Exit 1
}

$outputFile = $args[0]
Set-Content -Path $outputFile -Value "// <autogenerated/>"
Add-Content -Path $outputFile -Value (Get-Content -Path ($PSScriptRoot + "/outputheader.txt"))
$sourceFiles | ForEach-Object { Add-Content -Path $outputFile -Value (Get-Content $_.FullName) }