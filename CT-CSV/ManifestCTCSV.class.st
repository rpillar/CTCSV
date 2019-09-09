"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCTCSV,
	#superclass : #PackageManifest,
	#category : #'CT-CSV'
}

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
