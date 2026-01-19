printing
printOn: aStream
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		print: selector;
		nextPutAll: ' -> ';
		print: receiver;
		nextPut: $)