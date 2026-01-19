initialization
initialize
	super initialize.
	registry := SubscriptionRegistry new.
	self defaultDeliveryErrors.