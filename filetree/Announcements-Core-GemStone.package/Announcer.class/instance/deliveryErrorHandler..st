exception handling
deliveryErrorHandler: aOneArgBlock
	"Set the exception handler to be used when delivering
	 announcements encounters an error.
	 The argument to the block will be the exception that
	 was thrown (Error or a subclass of it)."

	deliveryErrorHandler := aOneArgBlock