tests
testAnnouncingReentrant
	"Test that it is safe to announce when handling announcement,
	so announcer are reentrant"
 
	| bool ok |

	ok := bool := false.
	announcer when: Announcement do: [
		bool ifFalse: [
			bool := true.
			announcer announce:  Announcement new. ]
		ifTrue: [ ok := true ] 
	].

	self should: [ announcer announce: Announcement new. ] notTakeMoreThan: (Duration seconds: 1).
	self assert: ok

