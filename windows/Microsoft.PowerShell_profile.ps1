function Write-Journal {
    # Set variables
    $JournalDir = 'E:\Mike\iCloud Drive\27N4MQEA55~pro~writer\'
    $MonthYear = Get-Date -Format "MMMM yyyy"
    $JournalFile = Join-Path -Path "$JournalDir" -ChildPath "$MonthYear.txt"
    # Append today's date
    python E:\Mike\Code\config\windows\windows-journal.py | Out-File -FilePath $JournalFile -Append -en utf8
    # Open journal in Visual Studio Code at end of file
    code -g ($JournalFile + ':500')
}

New-Alias jr Write-Journal