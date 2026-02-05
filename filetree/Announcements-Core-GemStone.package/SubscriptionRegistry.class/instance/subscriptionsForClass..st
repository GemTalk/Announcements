accessing
subscriptionsForClass: subscriberClass
	"Return the list of subscription for a given class"

	^ Array
		streamContents: [ :s | 
			subscriptions
				do: [ :each | 
					(each subscriber isKindOf: subscriberClass)
						ifTrue: [ s nextPut: each subscriber ] ] ]