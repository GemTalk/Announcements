testing
handleSubscriberClass: eventClass
	"Return true if the receiver has a callback subscribed for the event class"

	^ subscriptions anySatisfy: [ :sub | sub subscriber isKindOf: eventClass ]