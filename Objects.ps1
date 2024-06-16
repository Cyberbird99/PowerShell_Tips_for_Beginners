<#To add custom objects

Example 1:#>

$Student1=New-Object -TypeName pscustomobject

Add-Member -InputObject $Student1 -MemberType NoteProperty -Name 'StudentID'  -Value '1001'
Add-Member -InputObject $Student1 -MemberType NoteProperty -Name 'FirstName'  -Value 'John'
Add-Member -InputObject $Student1 -MemberType NoteProperty -Name  'Class'      -Value 'Math'

Get-Member -InputObject $Student1


<#To add custom objects
Another way 
Example 2:#>

$Student2=[PSCustomObject]@{
   StudentID='1002'
   FirstName='Jenny'
   Class='Science'
}

#To add custom objects
#Another way 
#Example 3:

$Student2

$Student3=[PSCustomObject]@{StudentID='1003';FirstName='Tim';Class='Science'}
 
$Student3