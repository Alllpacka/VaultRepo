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
$myMethod = {`
	MemberType = "ScriptMethod"`
	Name = "getAverage"`
	Value = {`
		return ($this.sumOfScores / $this.countOfScores)`
	}`
}


$myObject = [PSCustomObject]@{`
	sumOfScores = 20`
	countOfScores = 5`
}

Get-Member -InputObject $myObject

Add-Member -InputObject $myObject $myMethod

"Durchschnitt" + $myObject.getAverage

Get-Member -InputObject $myObject
~~~

~~~ps1
$a = [PSCustomObject]@{
laenge = 3
breite = 5
}

$b = @(3,5) #[0]: Länge;[1]: Breite

$method = @{
	MemberType = "ScriptMethod"
	Name = "getFlaeche"
	Value = {
		return ($this.laenge * $this.breite)
	}
}

AddMember -InputObject $a @method

$a.getFlaeche()
~~~

~~~ps1
class Recheck {
[float] laenge
[float] breite

Rechteck([float] laenge, [float] breite) {
	$this.laenge = $laenge
	$this.breite = $breite
	}

[fl]
}
~~~