accessing
parseCSVColumnString: aString

	"attempt to parse the column string and return the appropriate type."
	| col |
	
	[ aString asDate. col := aString ] on: Exception do: [  
		[ col := aString asNumber. ] on: Error do: [ col := aString ].
	].

	^ col.