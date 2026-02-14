function Get-Tree {
    param (
        [string]$Path,
        [int]$IndentLevel = 0
    )

    $indent = '    ' * $IndentLevel

    $items = Get-ChildItem -Path $Path

    foreach ($item in $items) {
        if ($item.PSIsContainer) {
            Write-Output "$indent├── $($item.Name)"
            Get-Tree -Path $item.FullName -IndentLevel ($IndentLevel + 1)
        } else {
            $sizeMB = [math]::Round(($item.Length / 1MB), 0)
            Write-Output "$indent├── [$sizeMB MB] $($item.Name)"
        }
    }
}

Get-Tree | Out-File -FilePath "Powershell_Tree_list_with_filesize.txt"