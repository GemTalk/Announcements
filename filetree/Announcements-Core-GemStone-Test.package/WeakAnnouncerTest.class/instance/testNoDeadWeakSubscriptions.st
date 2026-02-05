tests
testNoDeadWeakSubscriptions

	self maximumReclamation.
	self assert: (WeakAnnouncementSubscription allInstancesInMemory select: [ :sub | sub subscriber isNil ]) isEmpty.
	self assert: (WeakAnnouncementSubscription allInstancesInMemory select: [ :sub | sub subscriber isNil ]) isEmpty