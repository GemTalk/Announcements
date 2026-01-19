tests
testWeakObject

	| counter collector forwarder |
	counter := 0.
	collector := [ counter := counter + 1 ].
	forwarder := MessageSend receiver: collector selector: #value.
	(announcer when: AnnouncementMockA send: #value to: forwarder) makeWeak.
	
	" shouldn't go away, we are still holding a reference to 'forwarder': "
	self maximumReclamation.
	announcer announce: AnnouncementMockA.
	self assert: counter equals: 1.
	
	" should go away as we let the only reference to 'forwarder' go: "
	forwarder := nil.
	self maximumReclamation.
	announcer announce: AnnouncementMockA.
	self assert: counter equals: 1