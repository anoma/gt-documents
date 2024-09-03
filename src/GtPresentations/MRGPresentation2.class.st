Class {
	#name : #MRGPresentation2,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #GtPresentations
}

{ #category : #slides }
MRGPresentation2 >> conclusion: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 10;
		subtitleWithFormat: ('Conclusion' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('This section covered the basis of a productive organization
  • Work at scale leads to a demand on personal.
  • Good Personal leads to a demand on metrics.
  • Metrics leads to conflicting demands
  • This leads to an administrative arm

The sentiments in this section lays the basis for other argumentation found in other books that we will read.'
				asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> idealsP2: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 9;
		subtitleWithFormat: ('Structure' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('
  • Leadership shows a need for objective yardsticks.
  • Objective yardsticks Should not be a sacred cow.
  • Adminstrative yardsticks may get in the way of work.
  
  • Individuals Should have Independent Judgement.
       • Effective Executive and Truppenführung.
  • Adminstratives job to balance these conflicts.
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> leadership: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.7;
		priority: 6;
		newTextWithFormat: ('Leadership' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60) bold;
		newTextWithFormat: ('The need for structure' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils leadershipPrinciplesInWardleyMap))
				maximized ]
]

{ #category : #slides }
MRGPresentation2 >> leadershipP2: aSlide [
	"Leadership is generally about creating
	Objective metrics so that rightful respected leaders can be chosen."

	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 7;
		subtitleWithFormat: ('Leadership' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('
  • Leadership should be tested from within.
  • The test should be a rational one.
  • There should be objective measuring sticks.
  • Leadership must be tested!
  • Training is apart of the managerial duties!
  • Even at the lowest levels, people are executives
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> miricalOfXYZ: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.6;
		priority: 4;
		newTextWithFormat: ('Post War Production'  asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		newTextWithFormat: ('The miracle was not in the in the raw industrial capacity' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ self xyzProductionTimeline ]
]

{ #category : #slides }
MRGPresentation2 >> organization: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.7;
		priority: 3;
		newTextWithFormat: ('Organization at Scale' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60) bold;
		newTextWithFormat: ('Organization as a human enterprise' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils organizationalStructureInWardleyMap))
				maximized ]
]

{ #category : #slides }
MRGPresentation2 >> organizationalIdeals: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.7;
		priority: 8;
		newTextWithFormat: ('Policy and Ideals' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60) bold;
		newTextWithFormat: ('A Balance Between:'
				asRopedText
				glamorousRegularFont;
				fontSize: 30);
		newTextWithFormat: ('  • Effective Executive' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		newTextWithFormat: ('  • Organizational Rigidity' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils organizationalIdealsInWardleyMap))
				maximized ]
]

{ #category : #accessing }
MRGPresentation2 >> slidePriorities [
	<gtExample>
	^ #(#title: #summaryOfBook: #organization: #miricalOfXYZ: #whyTheMiracleHappened: #leadership: #leadershipP2: #organizationalIdeals: #idealsP2: #conclusion:)
]

{ #category : #slides }
MRGPresentation2 >> summaryOfBook: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	| text |
	text := '
Peter Drucker wrote this 22 years after The Concept of the Corporation.


The Effective Executive deals with how to manage oneself.

The book deals with the manage section.
This book mainly deals with the ideals section'.
	^ aSlide paragraph
		priority: 2;
		subtitleWithFormat: ('About the book' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: (text asRopedText
				glamorousRegularFont;
				fontSize: 30;
				in: [ :t | 
					(t
						from: (text findWordStart: 'manage' startingAt: 1)
						to: (text findWordStart: 'manage' startingAt: 1) + 'manage' size)
						foreground: MRGSlideUtils manageColor ];
				yourself)
]

{ #category : #slides }
MRGPresentation2 >> title: aSlide [
	<gtSlide>
	<text: 'A title or header slide'>
	^ aSlide title
		priority: 1;
		titleBottomPadding: 30;
		titleWithFormat: ('The Effective Executive' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		subtitleWithFormat: ('Effectiveness Can Be Learned' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> whyTheMiracleHappened: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 5;
		subtitleWithFormat: ('Miraculous Process' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('It rests on four pillars:
  1. Design of each part
  2. Analysis of each part
  3. Merging the production
  4. Training for the role

Most Importantly it is tempting to skip these steps, dont let it.
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> xyzProductionTimeline [
	<gtExample>
	| plotter |
	plotter := GtPlotter new.
	^ plotter verticalTimeline
		withProjectionAxis;
		timelineLabelFormat: [ :eachDateAndTime | 
			(eachDateAndTime monthAbbreviation , ' ' , eachDateAndTime dayOfMonth asString
				, ' ' , eachDateAndTime year asString) asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color darkGray ];
		projectionLabelFormat: [ :eachObject | 
			eachObject asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color black ];
		timelineData: #key;
		projectionData: #value;
		timelineFrom: (Date
					year: 1941
					month: 11
					day: 6)
			to: (Date
					year: 1942
					month: 7
					day: 1) asMonth;
		with: {(Date
					year: 1941
					month: 12
					day: 7) -> 'Pearl Harbor'.
				(Date
					year: 1942
					month: 5
					day: 20) -> 'Wrecking Crews Left the Factory'.
				(Date
					year: 1942
					month: 5
					day: 1) -> 'New Machines Moved in'.
				(Date
					year: 1942
					month: 6
					day: 1) -> 'New Machines Moved in'.
				(Date
					year: 1942
					month: 6
					day: 15) -> 'First Planes Left the factory'}
]
