# First run biber
biber --quiet main
if ($? -eq 'True')
{
    Write-Output "Biber successful !"
}
else 
{
    Write-Output "Biber Failed !"
}

# Then run glossaries
makeglossaries -q main

# Third run lualatex
echo $null > main.aex  # Strange error if not available
lualatex --shell-escape --halt-on-error --file-line-error main > $null

if ($? -eq 'True')
{
    Write-Output 'PDF is created. Successful !'
}
else
{
    Get-Content .\main.log | Select-Object -Last 40
    Write-Output 'There were errors. Maybe PDF is created though!'
}