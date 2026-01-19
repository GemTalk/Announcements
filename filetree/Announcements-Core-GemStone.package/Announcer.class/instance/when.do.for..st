subscription
when: anAnnouncementClass do: aValuable for: aSubscriber
	"Declare that when anAnnouncementClass is raised, aValuable is executed and define the subscriber."
	
	^ registry add: (
		AnnouncementSubscription new 
			announcer: self;
			announcementClass: anAnnouncementClass;
			valuable: aValuable;
			subscriber: aSubscriber;
			yourself)