Class {
	#name : #BaselineOfGtPresentations,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtPresentations
}

{ #category : #loading }
BaselineOfGtPresentations class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-presentations' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGtPresentations >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtPresentations'
		]
]
