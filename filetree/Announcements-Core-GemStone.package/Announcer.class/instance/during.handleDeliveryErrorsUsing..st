exception handling
during: aBlock handleDeliveryErrorsUsing: anExceptionHandler
	| savedHandler |
	savedHandler := self deliveryErrorHandler.
	self deliveryErrorHandler: anExceptionHandler.
	^ aBlock
		ensure: [ self deliveryErrorHandler: savedHandler ]