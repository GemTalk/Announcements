exception handling
defaultDeliveryErrors
	self deliveryErrorHandler: [ :ex | ex defaultAction ]