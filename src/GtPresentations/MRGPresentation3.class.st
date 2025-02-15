Class {
	#name : #MRGPresentation3,
	#superclass : #PrioritySlideshow,
	#category : #GtPresentations
}

{ #category : #slides }
MRGPresentation3 >> consolidatingDiscretionaryTime: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Consolidating ‘Discretionary Time’');
		paragraphWithFormat: (self
				asText: 'Executives do not have much time

• At least of half of the time is taken by non important matters

• At best 1/4 is discretionary

• It is important to consolidate work into large chunks!

• Estimate how much time can be discretionary and try to see what enchoraches.')
]

{ #category : #slides }
MRGPresentation3 >> consolidatingTime: aSlide [
	"This is where I got the idea to record my time
	There is no substitute for time it is a precious resource"

	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'On Effective Time Management');
		paragraphWithFormat: (self
				asText: 'It is best to plan one‘s time not one’s work.

• Record Time

• Manage Time

• Consolidate time')
]

{ #category : #slides }
MRGPresentation3 >> focusOnPriorities: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.5;
		setPriority;
		newTextWithFormat: (self asHeader: 'Know Thy Time') bold , self cr , (self asText: 'Relating it to the whole');
		element: [  (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils prioritiesInWardleyMap))
				maximized ]
]

{ #category : #slides }
MRGPresentation3 >> memory: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Memory is fallible');
		paragraphWithFormat: (self
				asText: 'One is quite bad at remembering where their time goes!

• Logs do not lie!

• This is why I record all my activities')
]

{ #category : #slides }
MRGPresentation3 >> prunningWasters: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Prunning the Time Wasters');
		paragraphWithFormat: (self
				asText: 'Poor management wastes everyones time.

• The first task here is to identify the time-wasters which follow from lack of system or foresight.

• Time-wastes result from overstaffing.
   MMM Talks alot about n^n communication overhead.

• Another common time-waster is malorganization. Its symptom is an exces of meetings.
')
]

{ #category : #'as yet unclassified' }
MRGPresentation3 >> slidePriorities [
	<gtExample>
	^ #(#title: #focusOnPriorities: #consolidatingTime: #memory: #timeDemands: #timeDiagnosis: #prunningWasters: #consolidatingDiscretionaryTime: #summarySlide:)
]

{ #category : #slides }
MRGPresentation3 >> summarySlide: aSlide [
	<gtSlide>
	<text: 'A summary slide'>
	| slideSelectors |
	"slideSelectors := #(textAndElement: lepiterPage: inspectorOnObject: gtWorld:)."
	slideSelectors := #(#timeDemands: #timeDiagnosis: #prunningWasters: #consolidatingDiscretionaryTime:).
	^ aSlide labelAndElement
		setPriority;
		newFadedText: 'Time is the scarcest resource';
		element: [ self summaryElementFor: slideSelectors ]
]

{ #category : #slides }
MRGPresentation3 >> timeDemands: aSlide [
	"Time demands are constant, personal decisions take forever"

	<gtSlide>
	<text: 'A title slide with multiple, centered texts.'>
	^ aSlide titleWithFooters
		setPriority;
		titleWithFormat: (self asTitle: 'Time Demands on the Executive');
		newFooterWithFormat: (self asBigText: 'Time Demands are constant') underline;
		newFooterWithFormat: (self asBigText: '');
		newFooterWithFormat: (self
				asBigText: '• These demands are necessary but do not contribute to productivity');
		newFooterWithFormat: (self asBigText: '');
		newFooterWithFormat: (self
				asBigText: '• What is worse is that we need a minimum time quantum to do anything');
		newFooterWithFormat: (self asBigText: '');
		newFooterWithFormat: (self
				asBigText: '• Personal decisions are slow and require uninterrupted time. Same with Personal Relations');
		newFooterWithFormat: (self asBigText: '');
		newFooterWithFormat: (self
				asBigText: '• Change and innovation are especially demanding, we think in what already knows!')	"subtitleWithFormat: (self asSubtitle: 'subtitle');"
]

{ #category : #slides }
MRGPresentation3 >> timeDiagnosis: aSlide [
	"We can cut a lot of unncessary time out, don't be afraid to ask questions about what I personally contirbute that wastes time"

	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		setPriority;
		subtitleWithFormat: (self asSubtitle: 'Diagnosing one’s time');
		paragraphWithFormat: (self
				asText: 'How can we find and remove wasted time?:

• Try to eliminate tasks that do not need to be done: 
	"What would happen if this were not done at all?"

• Ask which of these activities could be done by someoe else just as well, if not better.

• A common cause of time waste is largely under the exeutives control, and can be eliminated by him.
')
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
