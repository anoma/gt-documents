Class {
	#name : #MRGSlideUtils,
	#superclass : #Object,
	#category : #GtPresentations
}

{ #category : #accessing }
MRGSlideUtils class >> EffectiveKnowledgeWorkersInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Effective Knowledge Workers'
]

{ #category : #accessing }
MRGSlideUtils class >> EffectiveWorkInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Effective Work'
]

{ #category : #lepiter }
MRGSlideUtils class >> findPage: aPageName dataBaseNamed: dbName [
	| database |
	database := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase
			databaseNamed: dbName.
	^ database pageNamed: aPageName
]

{ #category : #wardley }
MRGSlideUtils class >> highlightWardley: aSnippet withNodeName: aName [
	| aMapViewModel aSnippetViewModel node |
	aSnippetViewModel := aSnippet asSnippetViewModel.
	node := aSnippet wardleyMap
			nodeWithName: aName
			ifFound: #value
			ifNone: nil.
	aMapViewModel := aSnippetViewModel wardleyMapViewModel.
	aMapViewModel
		nodeViewModelFor: node
		ifFound: [ :aNodeViewModel | 
			aNodeViewModel
				addWardleyMapDecoratorViewModel: GtWardleyMapHighlight new asDecoratorViewModel ]
		ifNone: [  "ignore" ].
	^ aSnippetViewModel
]

{ #category : #colors }
MRGSlideUtils class >> idealsColor [
	^ Color fromHexString: '#00008B'
]

{ #category : #accessing }
MRGSlideUtils class >> leadershipPrinciplesInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Leadership Principles'
]

{ #category : #colors }
MRGSlideUtils class >> manageColor [
	^ Color brown
]

{ #category : #'wardley - examples' }
MRGSlideUtils class >> managementReadingGroupWardleyMap [
	<gtExample>
	| page |
	page := MRGSlideUtils
			findPage: 'Management Reading Group Opening'
			dataBaseNamed: 'Anoma'.
	^ (page allChildrenDepthFirst
		select: [ :child | child isKindOf: LeWardleyMapSnippet ]) first
]

{ #category : #accessing }
MRGSlideUtils class >> organizationalIdealsInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Corporate Ideals'
]

{ #category : #accessing }
MRGSlideUtils class >> organizationalStructureInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Organizational Structure'
]

{ #category : #accessing }
MRGSlideUtils class >> prioritiesInWardleyMap [
	<gtExample>
	^ self
		highlightWardley: self managementReadingGroupWardleyMap
		withNodeName: 'Priorities'
]

{ #category : #wardley }
MRGSlideUtils class >> wardleyMapAsElement: wardleyElement [
	"Hack to get around no asElement for Wardley maps"

	^ (LePage new
		addSnippet: wardleyElement;
		yourself) asPreviewElement
]

{ #category : #wardley }
MRGSlideUtils class >> wardlyAssociations: aPageName databaseNamed: dbName [
	| page pages |
	page := MRGSlideUtils findPage: aPageName dataBaseNamed: dbName.
	pages := page allOutgoingExplicitLinks
			collect: [ :each | each targetReference content ]
			as: Set.
	pages add: page.
	pages := pages as: OrderedCollection.
	^ LeWardleyMapSnippetGroup
		withAll: (pages
				flatCollect: [ :aPage | 
					aPage allChildrenDepthFirst
						select: [ :child | child isKindOf: LeWardleyMapSnippet ] ])
]
