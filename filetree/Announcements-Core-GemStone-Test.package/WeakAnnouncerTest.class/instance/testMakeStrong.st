tests
testMakeStrong

	| counter collector forwarder subscription |
	counter := 0.
	collector := [ counter := counter + 1 ].
	forwarder := MessageSend receiver: collector selector: #value.
	subscription := announcer weak when: AnnouncementMockA send: #value to: forwarder.
	
	" shouldn't go away, we are still holding a reference to 'forwarder': "
	self maximumReclamation.
	announcer announce: AnnouncementMockA.
	self assert: counter equals: 1.
	
	"Shouldn't go away since we converted to a strong sub"
	subscription := subscription makeStrong.
	forwarder := nil.
	self maximumReclamation.
	announcer announce: AnnouncementMockA.
	self assert: counter equals: 2