function Test-MarkdownLinks([String]$Path, [Switch]$NoOutput) {
    # Adding necessary type
    Add-Type -AssemblyName System.Net.Http

    # Array to store all dead links
    $unreachable = @()    

    # Get markdown files recursively
    $files = Get-ChildItem -Path $Path -Recurse -Include "*.md"

    # Running through all files in repository
    $files | ForEach-Object {
        $fileName = $_.Name
        if (-not $NoOutput) {
            Write-Host "Analyzing '$fileName'" -ForegroundColor Yellow 
        }

        # Retrieving all URLs of page
        $urls = Select-String -Path $_ -Pattern "\[.+\]\((http.*?)\)" | ForEach-Object { $_.matches.Groups[1] } | Select-Object

        # Running through all URLs to retrieve status code
        $urls | ForEach-Object {
            $url = $_.Value
            if (-not $NoOutput) {
                Write-Host "Requesting URL '$url'"
            }
            
            $winhttpclient = New-Object System.Net.Http.HttpClient
            $winhttpclient.DefaultRequestHeaders.Add("User-Agent", "Mozilla/5.0"); 
            Write-Host "Start Request"
            $winhttptask = $winhttpclient.GetStringAsync($URL)
            
            Try 
            {
               Write-Host "Wait für completion"
               $winhttptask.wait() # wait für end of http-tasks
               Add-Member -InputObject $winhttptask -Name LastStatus -MemberType noteproperty -Value "OK" -Force
            }
            Catch 
            {
               Write-Host "Download ERROR $URL"
               Write-Host ("Error:" + $winhttptask.Exception.InnerException.message)
               Add-Member -InputObject $winhttptask -Name LastStatus -MemberType noteproperty -Value ($winhttptask.Exception.InnerException.message) -Force
               $error.removerange(0,1) # remove last error
            }
            
            if ($winhttptask.LastStatus -eq "OK") 
            {
                if (-not $NoOutput) {
                    Write-Host "Resolved URL '$url' in '$fileName' successfully." -ForegroundColor Green
                }
            }
            else {
                if (-not $NoOutput) 
                {
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
$DeadLinks = Test-MarkdownLinks -Path ".\" #-NoOutput

# Outputting dead links
if ($DeadLinks) {
    Write-Host -Object '--- DEAD LINKS FOUND ---' -ForegroundColor Red
    $DeadLinks | Format-Table -AutoSize | Out-String -Width 4096 
    Write-Host -Object '--- DEAD LINKS FOUND ---' -ForegroundColor Red
    exit 1
}
