Class {
	#name : #MRGPresentation2,
	#superclass : #PrioritySlideshow,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #GtPresentations
}

{ #category : #slides }
MRGPresentation2 >> PropertiesOfAnEE: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 10;
		subtitleWithFormat: ('Properties of an Effective Executive' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('
  1. They know where their time goes, and manage what little is left.
  2. Focus on outward contributions rather than work
  3. Build upon strengths; Do not build on weaknesses.
  4. Concetrate on few areas.
  5. Make effective decisions.
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> executiveRealities: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.7;
		priority: 8;
		newTextWithFormat: ('Executive Realities' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60) bold;
		newTextWithFormat: ('Against Futility' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils EffectiveWorkInWardleyMap))
				maximized ]
]

{ #category : #slides }
MRGPresentation2 >> executivesOnTheRise: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	| text |
	text := '
• Knowledge workers being the norm is a new phenomenon.
• We can not be sure if a knowledge worker is really working, nor tell what he is thinking.
• The effectivness of a knowledge worker is not in the output itself, but rahter the ecosystem it feeds into.'.
	^ aSlide paragraph
		priority: 3;
		subtitleWithFormat: ('Knowledge Workers Rising' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: (text asRopedText
				glamorousRegularFont;
				fontSize: 30;
				yourself)
]

{ #category : #slides }
MRGPresentation2 >> knowledgeWorkers: aSlide [
	<gtSlide>
	<text: 'Text with an element'>
	^ aSlide textAndElement
		elementWeight: 0.7;
		priority: 6;
		newTextWithFormat: ('Knowledge Workers' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60) bold;
		newTextWithFormat: ('Who is an Executive' asRopedText
				glamorousRegularFont;
				fontSize: 30);
		element: [ (GtPager
				createWrappedOn: (GtInspector forObject: MRGSlideUtils EffectiveKnowledgeWorkersInWardleyMap))
				maximized ]
]

{ #category : #slides }
MRGPresentation2 >> knowledgeWorkersV2: aSlide [

	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 7;
		subtitleWithFormat: ('Who is an Executive?' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('
  • Knowledge Workers are executives.
  • Not all managers are executives.
  • This book is aimed at any knowledge worker
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> mortalMen: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	^ aSlide paragraph
		priority: 9;
		subtitleWithFormat: ('Mortal Men' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: ('
  • Many roles call for outstanding credentials.
  • We do not need universal experts.
  • We need roles that mere mortal men can fill.
  • We need to learn to make better use of men!
  • We need to learn to utilize effectiveness.
  • Utilize people with peaks and valleys.
' asRopedText
				glamorousRegularFont;
				fontSize: 30)
]

{ #category : #slides }
MRGPresentation2 >> pressuresToBeIneffective: aSlide [
	<gtSlide>
	<text: 'Text with a paragraph'>
	| text |
	text := '
  1. Everyone can impeed on an executives time.
  2. Executives are forced to continue operating.
  3. The executive finds himself inside some enterprise. 
        • others have to use his work, to be effective.
  4. The executive find himself inside some enterprise.
'.
	^ aSlide paragraph
		priority: 8;
		subtitleWithFormat: ('Pressures be Ineffective' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 60);
		paragraphWithFormat: (text asRopedText
				glamorousRegularFont;
				in: [ :t | 
					(t
						from: (text findWordStart: 'inside' startingAt: 180)
						to: (text findWordStart: 'inside' startingAt: 180) + 'inside' size) bold ];
				fontSize: 30)
]

{ #category : #accessing }
MRGPresentation2 >> slidePriorities [
	<gtExample>
	^ #(#title: #summaryOfBook: #executivesOnTheRise: #knowledgeWorkers: #knowledgeWorkersV2: #pressuresToBeIneffective: #mortalMen: #PropertiesOfAnEE:)
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
