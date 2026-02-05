registration
when: anAnnouncementClass
send: aSelector
to: anObject

	| subscription |
	(anObject isKindOf: BlockClosure)
		ifTrue: [WeakBlockUnsupported signal].
	subscription := WeakAnnouncementSubscription
		announcer: announcer
		announcementClass: anAnnouncementClass
		receiver: anObject
		selector: aSelector.
	^announcer basicSubscribe: subscription