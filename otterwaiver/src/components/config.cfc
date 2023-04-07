<cfcomponent name="config">
	<cfscript>
		//APP Settings
		this.client_id = application.client_id;
		this.client_secret = application.client_secret;
		this.endpoint = {};

		// set endpint URLS
		this.endpoint.apiUrl = "https://api.otterwaiver.com"
	</cfscript>
</cfcomponent>