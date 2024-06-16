Set-StrictMode -Off
#HashTables is similar to dictionaries in Python
#Hashtables don't print in order in screen.

# A way to reate a hashtable and add items to it
$myHashTable=@{
    key1=100
    apple=2.34
    key2=2
   name=’John Doe’
   key3=$true
}

$myHashTable.GetType()
$myHashTable.Keys
$myHashTable.Values

# To get a value of a key, type that key only

$myHashTable.apple
# or 
$myHashTable[‘apple’]

# We can check if it contains specific value or key

$myHashTable.ContainsKey("key2")
$myHashTable.ContainsValue($true)

#To add new items, there are different ways

#1.Add method
$myHashTable.Add('key4', 'testing and fucntion')

#2. Square brackets
$myHashTable['key5']="added via square bracket"

# 3.with dot notation
$myHashTable.key6='added via dot notation'

$myHashTable

# To update keys , use square bracket and dot notation like adding

$myHashTable['key']="added via square bracket--"
$myHashTable.key6='added via dot notation--'

# To remove items
$myHashTable.Remove("apple")
$myHashTable

