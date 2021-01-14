function Write-Journal {
    # Set variables
    $JournalDir = 'D:\Mike\iCloud Drive\27N4MQEA55~pro~writer\'
    $MonthYear = Get-Date -Format "MMMM yyyy"
    $JournalFile = Join-Path -Path "$JournalDir" -ChildPath "$MonthYear.txt"
    # Append today's date
    python D:\Mike\Code\config\windows-journal.py | Out-File -FilePath $JournalFile -Append -en utf8
    # Open journal in Visual Studio Code at end of file
    code -g ($JournalFile + ':500')
}

New-Alias jr Write-Journal