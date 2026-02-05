tests
testWeakDoubleAnnouncer

	| a1 a2 o |
	a1 := Announcer new.
	a2 := Announcer new.
	o := Object new.
	self 
		assert: a1 subscriptions numberOfSubscriptions
		equals: 0.
	self
		assert: a2 subscriptions numberOfSubscriptions
		equals: 0.
	
	a1 weak
		when: Announcement
		send: #abcdef
		to: o.
	a2 weak
		when: Announcement
		send: #abcdef
		to: o.	
	self 
		assert: a1 subscriptions numberOfSubscriptions
		equals: 1.
	self
		assert: a2 subscriptions numberOfSubscriptions
		equals: 1.
	
	self maximumReclamation.
	self 
		assert: a1 subscriptions numberOfSubscriptions
		equals: 1.
	self
		assert: a2 subscriptions numberOfSubscriptions
		equals: 1.	

	o := nil.
	self maximumReclamation.
	self 
		assert: a1 subscriptions numberOfSubscriptions
		equals: 0.
	self
		assert: a2 subscriptions numberOfSubscriptions
		equals: 0.