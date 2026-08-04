$ErrorActionPreference = 'stop'
$course = Read-Host -Prompt "Enter your Course Code (e.g., COMPSCI 215)"
$assessment = Read-Host -Prompt "Enter your assessment (e.g., mid-semester test, exam, ...)"
$ca = ($course + ' ' + $assessment)
$command = "C:\Dividni\Mailman.exe"
. ".\assignment.ps1"
& $command -id $ca -results result student-list.tsv
pause