function Test-MarkdownLinks([String]$Path, [Switch]$NoOutput) {
    $unreachable = @()    

    # Get markdown files recursively
    $files = Get-ChildItem -Path $Path -Recurse -Include "*.md"

    $files | ForEach-Object {
        $fileName = $_.Name
        if (-not $NoOutput) {
            Write-Host "Analyzing '$fileName'" -ForegroundColor Yellow 
        }


        $urls = Select-String -Path $_ -Pattern "\[.+\]\((http.*?)\)" | ForEach-Object { $_.matches.Groups[1] } | Select-Object

        $urls | ForEach-Object {
            $url = $_.Value
            if (-not $NoOutput) {
                Write-Host "Requesting URL '$url'"
            }
            
            try {
                $request = Invoke-WebRequest -Uri $url -DisableKeepAlive -UseBasicParsing -Method head
            } catch {
                if (-not $NoOutput) {
                    Write-Warning -Message "Found dead URL '$url' in '$fileName'"
                }                
                $linkHashtable = @{ 
                    Path = $fileName
                    BrokenURL = $url
                }
                $unreachable += New-Object -TypeName PSObject -Property $linkHashtable
            }
        }
    }
    # Output urls
    return $unreachable
}

# This will force the use of TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Instantiating file
$DeadLinks= @()

# Output
Write-Host "Action: Analyzing all files for broken links." -ForegroundColor Yellow 

# Gathering dead links of all md files
$DeadLinks = Test-MarkdownLinks -Path ".\" -NoOutput

# Outputting dead links
if ($DeadLinks) {
    Write-Host -Object '--- DEAD LINKS FOUND ---' -ForegroundColor Red
    $DeadLinks | Format-Table -AutoSize | Out-String -Width 4096 | Out-File -FilePath 'DeadLinks.txt'
    exit 1
}
