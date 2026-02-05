exception handling
ignoreDeliveryErrors
	self deliveryErrorHandler: [ :ex | ex return ]