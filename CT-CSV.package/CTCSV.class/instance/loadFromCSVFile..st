loading
loadFromCSVFile: filePath

	| col csv count dict stream |

	( filePath asFileReference exists ) ifFalse: [ self success: false. ^ '' ].

	csv := ( NeoCSVReader new separator: self delimiter ).
	
	stream := ( csv on: filePath asFileReference readStream ).
	self headers: stream readHeader.
	stream do: [ :row | 
		dict := CTDictionary new.
		count := 1. 
		( row size ) timesRepeat: [ 
			col := self parseCSVColumnString: ( row at: count ).
			dict at: ( ( self headers at: count ) asSymbol ) put: col.
			count := count + 1.
		].
		self data add: dict.
	].
	stream close. 
	self success: true.