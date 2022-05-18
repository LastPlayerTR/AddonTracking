
		console.senduseragent(window.navigator.userAgent)
		console.sendlanguage(navigator.language || navigator.userLanguage)

		console.sendcpucount(navigator.hardwareConcurrency.toString())

		var connection = navigator.connection || navigator.mozConnection || navigator.webkitConnection;
		var type = connection.effectiveType;



		console.sendnetworkdata(type + connection.saveData.toString() + connection.rtt.toString() )



		// Initialize the agent at application startup.
		const fpPromise = import('https://openfpcdn.io/fingerprintjs/v3')
		  .then(FingerprintJS => FingerprintJS.load())
	  
		// Get the visitor identifier when you need it.
		fpPromise
		  .then(fp => fp.get())
		  .then(result => {
			// This is the visitor identifier:
			const visitorId = result.visitorId
			console.sendfingerprint( visitorId );
		  })
	
