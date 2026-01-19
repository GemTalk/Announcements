test - subscribers
testSubscribersForClass
	| subscribers mockA mockB |
	self assert: announcer numberOfSubscriptions equals: 0.
	
	mockA := AnnouncerSubscriberMockA new.
	mockA announcer: announcer.
	mockB := AnnouncerSubscriberMockB new.
	mockB announcer: announcer.
	mockA registerEvents.
	mockB registerEvents.
	
	self assert: announcer numberOfSubscriptions > 0.
	subscribers := announcer subscriptionsForClass: AnnouncerSubscriberMockA.
	self assert: subscribers size equals: 2.
	"AnnouncerSubscriberMockB inherits AnnouncerSubscriberMockA"
	subscribers := announcer subscriptionsForClass: AnnouncerSubscriberMockB.
	self assert: subscribers size equals: 1.
	subscribers := announcer subscriptionsForClass: self class.
	self assert: subscribers size equals: 0.
