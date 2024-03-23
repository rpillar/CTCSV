Class {
	#name : #CTCSVTest,
	#superclass : #TestCase,
	#category : #'CT-CSV-Tests'
}

{ #category : #tests }
CTCSVTest >> testParseCSVColumnString [

	| csv dt |
	csv := CTCSV new.
	self assert: ( ( csv parseCSVColumnString: 'this is a string value' ) isString ) equals: true.
	self assert: ( ( csv parseCSVColumnString: 123 ) isNumber ) equals: true.	
	dt := Date fromString: '2022-11-01'.
	self assert: ( ( csv parseCSVColumnString: dt) asDate asString ) equals: '1 November 2022'.

	
]
