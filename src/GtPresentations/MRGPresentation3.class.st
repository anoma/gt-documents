Class {
	#name : #MRGPresentation3,
	#superclass : #PrioritySlideshow,
	#category : #GtPresentations
}

{ #category : #'as yet unclassified' }
MRGPresentation3 >> slidePriorities [
	<gtExample>
	^ #(#title:)
]

{ #category : #'as yet unclassified' }
MRGPresentation3 >> title: aSlide [
	<gtSlide>
	<text: 'A title or header slide'>
	^ aSlide title
		priority: 1;
		titleBottomPadding: 30;
		titleWithFormat: ('The Effective Executive' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		subtitleWithFormat: ('Know Thy Time' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]
