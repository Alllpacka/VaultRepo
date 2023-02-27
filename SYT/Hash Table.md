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

~~~ps1
$students=@{}
$occurrences=@{}

$csv = Import-csv -Path C:\Users\jakob\Desktop\score_sample.csv -Delimiter "," -Encoding UTF8 

foreach($student in $csv) {
    $studentName = $student.Nachname + " " + $student.Vorname
    if(!($students.ContainsKey($studentName))) {
              $students.Add($studentName,$student.Scores)
              $occurrences.Add($studentName,1)
     } else {
            $safe = $students[$studentName]
            $occurrences[$studentName]=([int] $occurrences[$studentName])+1

            $students[$studentName]=([int] $student.Scores + [int] $safe)
     }
}

Write-Output "Name,Score" > ergebnis.csv

foreach($student in $students.Keys) {

    $studentscore = ([int] $students[$student])/([int] $occurrences[$student])

    Write-Output "$student,$studentscore" >> ergebnis.csv
}
~~~
