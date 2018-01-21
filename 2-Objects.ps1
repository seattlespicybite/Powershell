#Basic Objects. Finding type of object with Get-Member and GetType()
$PSObject = New-Object -TypeName psobject
$PSObject | Get-Member

$PSObject.GetType()
#For more informartion search MSDN for TypeName: System.Management.Automation.PSCustomObject 

$Spooler = Get-Service -Name Spooler
$Spooler | Get-Member

$Spooler.GetType()
$Spooler.StartType.GetType()
$Spooler.Stop
$Spooler.Stop()
$Spooler.Start()

#It is better to use built-in commands for services such as Get-Command -Noun Service


#String
"Hello World" 
$Hi = "Hello, World"
$Hi.Length
#String Properties
$Hi | Get-Member -MemberType Method
$Hi.ToLower()
Clear-Host
$Hi.Contains("Earth") #Returns True False
$Hi.IndexOf("World") #Returns position of the fist letter
$Hi.Insert($Hi.IndexOf(",")," there")
$Hi.EndsWith("d")
$Hi.Remove($Hi.IndexOf(","),2) #Where to start and how many delete
$Hi.Replace("World","Mars")
$Hi.Split(",") #Split will cut string into two strinngs

#Credentials
$SimpleCredential = Get-Credential
$SimpleCredential | Get-Member
$SimpleCredential.Password
$SimpleCredential.GetNetworkCredential().Password

#Arrays
$Array = Get-ChildItem C:\Drivers
$Array | Get-Member # It returns properties and Members of item in an array, not
#an array itsef
$Array.GetType()
#getting how many items in the array
$Array.Length
$Array[0]
$Array[-1]
$Array[1..3]
