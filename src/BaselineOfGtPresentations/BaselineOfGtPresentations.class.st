Class {
	#name : #BaselineOfGtPresentations,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtPresentations
}

{ #category : #loading }
BaselineOfGtPresentations class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-documents' ]
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
	^ spec
		for: #common
		do: [ self gtSlideShowExtension: spec.
			spec package: 'GtPresentations' ]
]

{ #category : #'as yet unclassified' }
BaselineOfGtPresentations >> gtSlideShowExtension: spec [
	spec
		baseline: 'GtSlideshowExtensions'
		with: [ spec repository: 'github://botwhytho/GtSlideshowExtensions:main/src' ]
]
