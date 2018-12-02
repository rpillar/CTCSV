loading
loadFromCSVFile: filePath

	| count dict stream |

	( filePath asFileReference exists ) ifFalse: [ self success: false. ^ '' ].
	
	stream := ( NeoCSVReader on: filePath asFileReference readStream ).
	self headers: stream readHeader.
	stream do: [ :row | 
		dict := Dictionary new.
		count := 1. 
		( row size ) timesRepeat: [ 
			dict at: ( ( self headers at: count ) asSymbol ) put: ( row at: count ).
			count := count + 1.
		].
		self data add: dict.
	].
	stream close. 
	self success: true.