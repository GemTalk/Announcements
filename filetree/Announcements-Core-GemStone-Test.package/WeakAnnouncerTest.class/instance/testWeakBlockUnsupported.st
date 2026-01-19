tests
testWeakBlockUnsupported
	"We support weak blocks though they aren't all that useful."

	| counter |
	counter := 0.
	self
		should: [announcer weak when: AnnouncementMockA send: #value to: []]
		raise: WeakBlockUnsupported.
	self
		should: [(announcer when: AnnouncementMockA do: [ :ann | counter := counter + 1 ] for: self) makeWeak]
		raise: WeakBlockUnsupported