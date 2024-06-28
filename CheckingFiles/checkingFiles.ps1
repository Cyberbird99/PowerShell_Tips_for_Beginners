
# To check if a file exists, We need to type file path first
# And then use Test-Path cmdlet
# We'll get True or False

$file='/home/PC01/file.txt'
Test-Path -Path $file

#################

# we can also print the output on screen

$file='/home/PC01/file.txt'
if(Test-Path -Path $file){
    Write-Output "File $file exists"
    
}else{
    Write-Output "File `"$file`" doesn't exist"
}

# WE can use escape characters on variable in Write-Output
# put single quote '' around the variable or
# double quote with backtick `" `"

#################

# We can access the content of the file if it exists

$file='/home/PC01/file.txt'

if(Test-Path -Path $file){
    Get-Content -Path $file
}else{
    Write-Output "File `"$file`" doesn't exist"
}

####################

# We can use nested if statements to get more details of the file content
# Use file properties like size, number of lines
# Use count for lines of the text

$file='/home/PC01/file.txt'

if(Test-Path -Path $file){
   $Data=Get-Content -Path $file
   if($Data.Count -lt 2){
    Write-Output "This file contains less than 2 lines"
    break
   }elseif ($Data.Count -lt 7) {
    Write-Output "This file contains less than 7 lines but more than 1 line"
    break
   }else{
    Write-Output "This file contains 7 or more lines"
    break
   }
}else{
    Write-Output "File `"$file`" doesn't exist"
}
