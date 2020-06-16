function Test-MarkdownLinks([String]$Path) {
    $unreachable = @()    

    # Get markdown files recursively
    $files = Get-ChildItem -Path $Path -Recurse -Include "*.md"

    $files | ForEach-Object {
        $fileName = $_.Name
        Write-Host "Analyzing '$fileName'" -ForegroundColor Yellow

        $urls = Select-String -Path $_ -Pattern "\[.+\]\((http.*?)\)" | ForEach-Object { $_.matches.Groups[1] } | Select-Object

        $urls | ForEach-Object {
            $url = $_.Value
            Write-Host "Requesting URL '$url'"

            try {
                $request = Invoke-WebRequest -Uri $url -DisableKeepAlive -UseBasicParsing -Method head
            } catch {
                Write-Warning -Message "Found dead URL '$url' in '$fileName'"
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

# Gathering dead links of all md files
$DeadLinks = Test-MarkdownLinks -Path ".\"

# Outputting dead links
if ($DeadLinks) {
    Write-Host -Object '--- DEAD LINKS FOUND ---' -ForegroundColor Red
    $DeadLinks | Format-Table
    exit 1
}
