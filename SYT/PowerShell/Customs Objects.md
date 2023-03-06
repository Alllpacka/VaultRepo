~~~ps1
$scores.Add($fullName,[PSCustomObject]@{`
	sumOfScores = $entry.score`
	countOfScores = 1`
})

$scores[$fullName].somOfScores += $entry.score
~~~