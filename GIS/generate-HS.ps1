param(
    [string]$DataPath = (Join-Path $PSScriptRoot 'data'),
    [string]$OutputPath = (Join-Path $PSScriptRoot 'HS.json'),
    [string]$ScriptOutputPath = (Join-Path $PSScriptRoot 'HS.js')
)

$classPattern = '^(?<className>' + [char]0x5730 + '(?:' + [char]0x4ea7 + '|' + [char]0x4fe1 + ')[^-]+)-'
$studentPattern = '^(?<id>202[^-]*)-(?<name>[' + [char]0x4e00 + '-' + [char]0x9fff + ']+)(?:-|$)'
$fileSuffix = [string]([char]0x4f5c) + [char]0x4e1a + '.pptx'

if (-not (Test-Path -LiteralPath $DataPath -PathType Container)) {
    throw "Data directory not found: $DataPath"
}

$students = foreach ($classDirectory in Get-ChildItem -LiteralPath $DataPath -Directory) {
    $classMatch = [regex]::Match($classDirectory.Name, $classPattern)
    if (-not $classMatch.Success) {
        continue
    }

    $className = $classMatch.Groups['className'].Value -replace '\s', ''
    foreach ($studentDirectory in Get-ChildItem -LiteralPath $classDirectory.FullName -Directory) {
        $studentDirectoryName = $studentDirectory.Name -replace '\s', ''
        $studentMatch = [regex]::Match($studentDirectoryName, $studentPattern)
        if ($studentMatch.Success) {
            $studentId = $studentMatch.Groups['id'].Value
            $studentName = $studentMatch.Groups['name'].Value
            [pscustomobject]@{
                className = $className
                id        = $studentId
                name      = $studentName
                signed    = $false
                fileName  = "$studentName-$fileSuffix"
            }
        }
    }
}

$sortedStudents = @($students | Sort-Object className, id)
if ($sortedStudents.Count -eq 0) {
    throw "No student directories matched in: $DataPath"
}
$json = ConvertTo-Json -InputObject ([array]$sortedStudents) -Depth 2
$json |
    Set-Content -LiteralPath $OutputPath -Encoding utf8
$script = "window.HSData = $json;"
$script |
    Set-Content -LiteralPath $ScriptOutputPath -Encoding utf8

Write-Output "Generated $OutputPath and $ScriptOutputPath with $($students.Count) records."