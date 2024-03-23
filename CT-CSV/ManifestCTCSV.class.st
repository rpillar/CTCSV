"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCTCSV,
	#superclass : #PackageManifest,
	#category : #'CT-CSV'
}

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleCollectionProtocolRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #loadFromCSVFile: #false)) #'2024-03-21T21:14:07.418699+00:00') #(#(#RGMethodDefinition #(#CTCSV #writeToCSVFile: #false)) #'2024-03-21T21:15:30.00599+00:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleGRAnsiExceptionsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2019-09-07T22:02:41.636849+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleGRParensFormattingRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #loadFromCSVFile: #false)) #'2019-09-05T22:58:37.601128+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleRBCollectionProtocolRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #loadCSV: #false)) #'2018-07-23T08:05:00.167017+01:00') #(#(#RGMethodDefinition #(#CTCSV #writeToCSVFile: #false)) #'2018-07-26T21:00:00.950823+01:00') #(#(#RGMethodDefinition #(#CTCSV #loadFromCSVFile: #false)) #'2019-08-30T22:05:19.022523+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleRBJustSendsSuperRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #initialize #false)) #'2019-09-06T22:04:32.798274+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleRBTempsReadBeforeWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #loadFromCSVFile: #false)) #'2019-09-07T20:52:34.199905+01:00') #(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2019-09-07T22:02:22.756484+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleRBUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2019-09-07T22:02:37.637699+01:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleReCompactSourceCodeRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #writeToCSVFile: #false)) #'2024-03-11T13:23:55.822614+01:00') #(#(#RGMethodDefinition #(#CTCSV #loadFromCSVFile: #false)) #'2024-03-21T21:06:27.728858+00:00') #(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2024-03-21T21:28:53.668893+00:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleTempsReadBeforeWrittenRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2024-03-21T21:30:04.913117+00:00') )
]

{ #category : #'code-critics' }
ManifestCTCSV class >> ruleUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSV #parseCSVColumnString: #false)) #'2024-03-21T21:29:22.461938+00:00') )
]
