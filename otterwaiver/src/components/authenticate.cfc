<cfcomponent name="Authentication">
	<cfscript>
		app = createObject("component","config");
		apiPayLoad={
		"client_id": app.client_id,
		"client_secret": app.client_secret,
		"grant_type": "client_credentials",
		"scope": "api"
		}
	</cfscript>

	<!--- START GENERATE AUTHORIZATION TOKEN FOR AUTHENTICATION--->
	<cffunction name="getToken" access="remote">

		<cfhttp method="post" url="#app.endpoint.apiUrl#/auth/connect" result="result">
			<cfhttpparam type="header" name="content-type" value="application/json">
			<cfhttpparam type="body" value="#serializeJSON(apiPayLoad)#">
		</cfhttp>

        <cfset response= #deserializeJSON(result.filecontent)# />
        <cfset this.token= #response.token# />
		<cfif isDefined("this.token") and this.token neq ''>
		<cfelse>
			<cfset this.token= '' />
		</cfif>
		<cfreturn this.token>
	</cffunction>
	<!--- START GENERATE AUTHORIZATION TOKEN FOR AUTHENTICATION--->
</cfcomponent>