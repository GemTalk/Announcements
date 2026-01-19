converting
makeWeak
	"Convert to a WeakAnnouncementSubscription."

	| newSub |
	(action isKindOf: BlockClosure) ifTrue: [WeakBlockUnsupported signal].
	newSub := WeakAnnouncementSubscription
		announcer: announcer
		announcementClass: announcementClass
		receiver: action receiver
		selector: action selector.
	^announcer
		replace: self
		with: newSub