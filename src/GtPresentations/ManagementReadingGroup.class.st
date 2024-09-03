Class {
	#name : #ManagementReadingGroup,
	#superclass : #Object,
	#traits : 'TGtSlideShow',
	#classTraits : 'TGtSlideShow classTrait',
	#category : #GtPresentations
}

{ #category : #accessing }
ManagementReadingGroup >> bookRangeSlideFor: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		priority: 2;
		element: [ self bookTimelines margin: (BlInsets left: 20 right: 50) ];
		elementWeight: 0.6;
		newTextWithFormat: ('Management Reading Group' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Management' size + 1) bold ];
				yourself);
		newTextWithFormat: ('Covers a Wide Range of Books' asRopedText
				fontSize: 35;
				glamorousRegularFont);
		newTextWithFormat: ('  • From Corporate Ideals' asRopedText
				fontSize: 35;
				glamorousRegularFont);
		newTextWithFormat: ('  • To Tactics' asRopedText
				fontSize: 35;
				glamorousRegularFont)
]

{ #category : #accessing }
ManagementReadingGroup >> bookTimelines [
	<gtExample>
	| plotter |
	plotter := GtPlotter new.
	plotter verticalTimeline
		withProjectionAxis;
		timelineData: #key;
		projectionData: #value;
		timelineLabelFormat: [ :eachDateAndTime | 
			(eachDateAndTime monthAbbreviation , ' ' , eachDateAndTime year asString)
				asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color darkGray ];
		projectionLabelFormat: [ :eachObject | 
			eachObject asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color black ];
		timelineFrom: 1932 asYear to: 2017 asYear;
		with: {(Date
					year: 1933
					month: 10
					day: 17) -> 'Truppenführung - (Tactics)'.
				(Date
					year: 1944
					month: 10
					day: 5) -> 'Concept of the Corporation - (Corporate Ideals)'.
				(Date
					year: 1966
					month: 1
					day: 1) -> 'The Effective Executive - (Self Management)'.
				(Date
					year: 1978
					month: 1
					day: 1) -> 'Toyota Production Systems - (Production Process/Lean)'.
				(Date
					year: 2010
					month: 1
					day: 1) -> 'Wardly Mapping - (Priority Discussions)'.
				(Date
					year: 2016
					month: 5
					day: 5) -> 'GCHQ: Boiling Frogs -(Business priorities)'}.
	^ plotter asElement
]

{ #category : #accessing }
ManagementReadingGroup >> formatMeetingFor: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 6;
		newTextWithFormat: ('Meeting Format' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Meeting' size + 1) bold ];
				yourself);
		newTextWithFormat: ('• The group organizer picks a section for everyone to read' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• Everyone reads the section' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• The organizer puts on a small presentation covering the topics' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• The group discusses the section' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		horizontalWeight: 0.8
]

{ #category : #accessing }
ManagementReadingGroup >> formatMeetingTimeLinesFor: aSlide [
	<gtSlide>
	^ aSlide textAndElement
		priority: 7;
		element: [ self readingTimelines margin: (BlInsets left: 20 right: 50) ];
		newTextWithFormat: ('Meeting Timeline' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Meeting' size + 1) bold ];
				yourself);
		newTextWithFormat: ('The proposed scheudle is as follows:' asRopedText
				fontSize: 40;
				glamorousRegularFont)
]

{ #category : #accessing }
ManagementReadingGroup >> formatTitle: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 5;
		titleWithFormat: ('Meeting Format' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Meeting' size + 1) bold ];
				yourself);
		subtitleWithFormat: ('Section 1' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #accessing }
ManagementReadingGroup >> idealsColor [
	^ Color fromHexString: '#00008B'
]

{ #category : #accessing }
ManagementReadingGroup >> managementPurposeSlidesFor: aSlide [

	^ aSlide text
		priority: 6;
		newTextWithFormat: ('Managing oneself' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('Section 21' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #accessing }
ManagementReadingGroup >> managementTitle: aSlide [

	^ aSlide title
		priority: 5;
		titleWithFormat: ('Managing oneself' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Managing' size + 1) bold ];
				yourself);
		subtitleWithFormat: ('Section 1' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #accessing }
ManagementReadingGroup >> readingGroupGoalsSlideFor: aSlide [
	<gtSlide>
	^ aSlide text
		priority: 3;
		newTextWithFormat: ('The purpose of the reading group is:' asRopedText
				fontSize: 50;
				glamorousRegularFont;
				bold);
		newTextWithFormat: ('• To better manage ourselves and others.' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• To discuss ideals.' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• To increase knowledge capacity.' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		newTextWithFormat: ('• To stimulate long term potential.' asRopedText
				fontSize: 40;
				glamorousRegularFont);
		"textMargin: 0;"
		horizontalWeight: 0.6
]

{ #category : #accessing }
ManagementReadingGroup >> readingGroupGoalsWardlySlideFor: aSlide [
	<gtSlide>
	| tx1 tx2 tx3 tx4 tx5 |
	tx1 := 'The purpose of the reading group is:' asRopedText
			fontSize: 50;
			glamorousRegularFont;
			bold.
	tx2 := '• To better manage ourselves and others.' asRopedText
			fontSize: 40;
			glamorousRegularFont;
			in: [ :t | (t from: 12 to: 12 + 'manage' size + 1) foreground: MRGSlideUtils manageColor ];
			yourself.
	tx3 := '• To discuss ideals.' asRopedText
			fontSize: 40;
			glamorousRegularFont;
			in: [ :t | (t from: 14 to: 14 + 'ideal' size) foreground: MRGSlideUtils idealsColor ];
			yourself.
	tx4 := '• To increase knowledge capacity.' asRopedText
			fontSize: 40;
			glamorousRegularFont;
			in: [ :t | (t from: 14 to: 14 + 'knowledge' size) foreground: Color red ];
			yourself.
	tx5 := '• To stimulate long term potential.' asRopedText
			fontSize: 40;
			glamorousRegularFont;
			in: [ :t | 
				(t from: 25 to: 25 + 'potential' size)
					foreground: (Color fromHexString: '#007e00') ];
			yourself.


	^ aSlide textAndElement
		priority: 4;
		element: [ MRGSlideUtils
				wardleyMapAsElement: MRGSlideUtils managementReadingGroupWardleyMap ];
		newTextWithFormat: tx1;
		newText: ' ';
		newText: ' ';
		newText: ' ';
		newTextWithFormat: tx2;
		newText: ' ';
		newText: ' ';
		newText: ' ';
		newTextWithFormat: tx3;
		newText: ' ';
		newText: ' ';
		newText: ' ';
		newTextWithFormat: tx4;
		newText: ' ';
		newText: ' ';
		newText: ' ';
		newTextWithFormat: tx5;
		elementWeight: 0.64
]

{ #category : #accessing }
ManagementReadingGroup >> readingTimelines [
	<gtExample>
	| plotter |
	plotter := GtPlotter new.
	plotter verticalTimeline
		withProjectionAxis;
		timelineLabelFormat: [ :eachDateAndTime | 
			(eachDateAndTime monthAbbreviation , ' ' , eachDateAndTime dayOfMonth asString)
				asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color darkGray ];
		projectionLabelFormat: [ :eachObject | 
			eachObject asRopedText glamorousRegularFont
				fontSize: 20;
				foreground: Color black ];
		timelineData: #key;
		projectionData: #value;
		timelineFrom: Date today asMonth to: (Date today addMonths: 1) asMonth;
		with: {Date today -> 'Reading Group Discussion'.
				(Date today addDays: 3) -> 'New Book and Section Chosen'.
				(Date today addDays: 11) -> 'Brief Reflection on the lessons learned if any'.
				(Date today addDays: 14) -> 'Reading Group Discussion'}.
	^ plotter asElement
]

{ #category : #accessing }
ManagementReadingGroup >> slidePriorities [
	<gtExample>
	^ #(#title: #bookRangeSlideFor: #readingGroupGoalsSlideFor: #readingGroupGoalsWardlySlideFor: #formatTitle: #formatMeetingFor: #formatMeetingTimeLinesFor: #wardleyMappings: #wardlyExampleSlideFor: #wardlyExampleTruppenfurherSlideFor: #wardlyExampleAnomaSlideFor:)
]

{ #category : #accessing }
ManagementReadingGroup >> title: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 1;
		titleWithFormat: ('Management Reading Group' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Management' size + 1) bold ];
				yourself);
		subtitleWithFormat: ('Introduction' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
ManagementReadingGroup >> wardleyMappings: aSlide [
	<gtSlide>
	^ aSlide title
		priority: 8;
		titleWithFormat: ('Wardley Mapping' asRopedText
				fontSize: 60;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 1 to: 'Wardley' size + 1) bold ];
				yourself);
		subtitleWithFormat: ('On Productive Tools' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #accessing }
ManagementReadingGroup >> wardlyExampleAnomaSlideFor: aSlide [
	<gtSlide>
	| mapSnippits |
	^ aSlide labelAndElement
		priority: 27;
		element: [ mapSnippits := MRGSlideUtils
					wardlyAssociations: 'Heliax Organizational Aspects'
					databaseNamed: 'Notes'.
			(GtPager createWrappedOn: (mapSnippits gtViewsFor: GtPhlowView empty))
				maximized ];
		newFadedText: 'And for concepts close to us'
]

{ #category : #accessing }
ManagementReadingGroup >> wardlyExampleSlideFor: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: 25;
		element: [ (GtLepiterPageLiveSlide new pageNamed: 'The Effective Executive' from: 'Notes')
				create maximized ];
		newFadedText: 'Wardly Maps have a wide variety of uses in analysis and discussion'
]

{ #category : #accessing }
ManagementReadingGroup >> wardlyExampleTruppenfurherSlideFor: aSlide [
	<gtSlide>
	| mapSnippits |
	^ aSlide labelAndElement
		priority: 26;
		element: [ mapSnippits := MRGSlideUtils
					wardlyAssociations: 'Truppenführung Concepts'
					databaseNamed: 'Notes'.
			(GtPager createWrappedOn: (mapSnippits gtViewsFor: GtPhlowView empty))
				maximized ];
		newFadedText: 'For both understanding foreign concepts'
]
