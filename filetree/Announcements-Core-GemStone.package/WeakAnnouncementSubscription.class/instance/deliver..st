announcing
deliver: anAnnouncement

	^ (self handlesAnnouncement: anAnnouncement ) ifTrue: [
		[self action cull: anAnnouncement cull: announcer] 
"Pharo has:
			on: UnhandledError fork: [:ex | ex pass ]]
GemStone has:
"			on: Error
			do: announcer deliveryErrorHandler]