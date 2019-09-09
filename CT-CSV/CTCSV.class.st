"
Class to load a CSV file (with headers). Data stored as an OrderedCollection containing a set of dictionaries - one for each line -> keys are the header values and therefore are assumed to be the first row in the file.

Because NeoCSVReader processes all fields as strings (unless you specify otherwise) we need to parse the column strings to _try_ and ensure that strings / integers / floats are stored correctly in the underlyig Dictionary objects.
"
Class {
	#name : #CTCSV,
	#superclass : #Object,
	#instVars : [
		'data',
		'headers',
		'success'
	],
	#category : 'CT-CSV'
}

{ #category : #accessing }
CTCSV >> data [
	data ifNil: [ data := OrderedCollection new ].
	^ data.
]

{ #category : #accessing }
CTCSV >> data: anObject [
	data := anObject
]

{ #category : #accessing }
CTCSV >> headers [
	^ headers
]

{ #category : #accessing }
CTCSV >> headers: anObject [
	headers := anObject
]

{ #category : #initialization }
CTCSV >> initialize [

	super initialize.
]

{ #category : #loading }
CTCSV >> loadFromCSVFile: filePath [

	| col count dict stream |

	( filePath asFileReference exists ) ifFalse: [ self success: false. ^ '' ].
	
	stream := ( NeoCSVReader on: filePath asFileReference readStream ).
	self headers: stream readHeader.
	stream do: [ :row | 
		dict := Dictionary new.
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
]

{ #category : #accessing }
CTCSV >> parseCSVColumnString: aString [

	"attempt to parse the colum string and return the appropriate type."
	| col |
	
	[ aString asDate. col := aString ] on: Exception do: [  
		[ col := NeoNumberParser parse: aString. ] on: Error do: [ col := aString ].
	].

	^ col.
]

{ #category : #accessing }
CTCSV >> schema [
	^ schema
]

{ #category : #accessing }
CTCSV >> schema: anObject [
	schema := anObject
]

{ #category : #accessing }
CTCSV >> success [
	^ success
]

{ #category : #accessing }
CTCSV >> success: anObject [
	success := anObject
]

{ #category : #loading }
CTCSV >> writeToCSVFile: filePath [

	| fileContents |

	( filePath asFileReference exists ) ifTrue: [ self success: false. ^ '' ].
	
	"collect keys / values as a set of collection objects."
	fileContents := OrderedCollection new.
	fileContents add: ( self data first collectKeysAsStrings: [ :k | k ] ).
	fileContents add: ( self data first keys ).
	self data do: [ :line |
		fileContents add: line values.
	].	

	"write the file ..."
	FileStream
		forceNewFileNamed: filePath
		do: [ :stream |
			(NeoCSVWriter on: stream)
				nextPutAll: fileContents ].	
	
	self success: true.
]
