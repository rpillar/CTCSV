"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCTCSVTests,
	#superclass : #PackageManifest,
	#category : #'CT-CSV-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestCTCSVTests class >> ruleReCompactSourceCodeRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CTCSVTest #testParseCSVColumnString #false)) #'2024-03-23T12:09:50.727097+00:00') )
]
