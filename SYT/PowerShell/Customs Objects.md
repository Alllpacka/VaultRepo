~~~ps1
$scores.Add($fullName,[PSCustomObject]@{`
	sumOfScores = $entry.score`
	countOfScores = 1`
})

$scores[$fullName].somOfScores += $entry.score
$scores[$fullName].countOfScores++
~~~

Get-Member (gm) listet alle Eigenschaften und Methoden auf

~~~ps1
