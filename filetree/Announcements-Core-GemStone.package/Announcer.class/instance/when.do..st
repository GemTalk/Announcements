registration api
when: anAnnouncementClass do: aValuable
	"Declare that when anAnnouncementClass is raised, aValuable is executed.  Pay attention that such method as well as #when:do: should not be used on weak announcer since the block holds the receiver and more strongly."
	
	aValuable hasReceiver ifFalse: [self error: 'Cannot determine aValuable''s subscriber. Use #when:do:for:, instead.'].
	^ self when: anAnnouncementClass do: aValuable for: aValuable receiver