# if else branching
if ($condition1 -eq $true) {
    #Statement
}
else {
    "Condition1 is not true"
}

if ($condition1) {" Condition 1 is true"} elseif ($condition2) {
    "condition 2 is true"
} else {
    "Both conditions 1 and 2 are false"
}

#Swith operator. Default condition is a requirement
switch ((Get-Service Spooler).Status) {
    "Running" {  Write-Host "Spooler is " (Get-Service Spooler).Status}
    "Starting" {"Spooler is Starting"}
    "Stopped" {Write-Host "Spooler is Stopped"}
    Default {"Service Spooler is " + (Get-Service Spooler).Status }
}
#Function is a script block that only runs when called on
#General Syntax
function Do-Something (OptionalParameters) {
    Operations
}
#Example, move old log files
function Archive-Logs ($ExpirationDate) {
    Get-ChildItem C:\Windows\System32\winevt\Logs | Where-Object {$_.CreationTime -lt $ExpirationDate }`
     | Move-Item -Destination C:\Archive\
}
function FunctionName (OptionalParameters) {
    
}

#DO Loops
#do-while loop runs wihle condition in while(false)
$a = 1
do {
    $a += 1
    $a
} while ($a -lt 25)
#do-until loop runs only when until() condition not reached
$a = 1
do {
    $a += 1
    $a
} until ($a -lt 25)
