converting
makeStrong

	| newSub |
	newSub := AnnouncementSubscription new
		announcer: announcer;
		announcementClass: announcementClass;
		valuable: self action;
		subscriber: receiver;
		yourself.
	self beEphemeron: false.
	^announcer
		replace: self
		with: newSub