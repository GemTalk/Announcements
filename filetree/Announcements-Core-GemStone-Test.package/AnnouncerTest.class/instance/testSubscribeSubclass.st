tests - subscribing
testSubscribeSubclass
	| announcement instance |
	announcer
		when: AnnouncementMockB
		do: [ :ann | announcement := ann ]
		for: self "GemStone can't identiy this block's receiver".
	announcement := nil.
	instance := announcer announce: AnnouncementMockA.
	self assert: announcement isNil.
	announcement := nil.
	instance := announcer announce: AnnouncementMockB.
	self assert: announcement equals: instance.
	announcement := nil.
	instance := announcer announce: AnnouncementMockC.
	self assert: announcement equals: instance