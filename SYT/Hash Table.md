| Key | Value |
| --- | ----- |
|     |       |
|     |       |
|     |       |
|     |       |

~~~ps1
$myTable=@{}

$myTable.add("key","value")

$myTable["key"]

$myTable["key"]="newValue"

foreach($key in $myTable.Keys) {
	echo $myTable[$key]
}
~~~
