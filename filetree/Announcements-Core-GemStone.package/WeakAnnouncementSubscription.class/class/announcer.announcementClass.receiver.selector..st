instance creation
announcer: anAnnouncer
announcementClass: anAnnouncementClass
receiver: anObject
selector: aSelector

	^self new
		receiver: anObject;
		selector: aSelector;
		announcer: anAnnouncer;
		announcementClass: anAnnouncementClass;
		beEphemeron: true;
		yourself