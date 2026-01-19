exception handling
reportToGciOnDeliveryErrors
	self deliveryErrorHandler: [ :ex | ex _signalGciError ]