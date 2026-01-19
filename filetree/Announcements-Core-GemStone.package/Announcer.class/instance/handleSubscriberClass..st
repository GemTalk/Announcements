testing
handleSubscriberClass: eventClass
	^ self subscriptions 
		ifNil: [ false ]
		ifNotNil: [:subscriptions | subscriptions handleSubscriberClass: eventClass]