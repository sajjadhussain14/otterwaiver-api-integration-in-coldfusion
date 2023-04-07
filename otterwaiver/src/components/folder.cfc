<cfcomponent name="folder">
	<cfscript>
		app = createObject("component","config");
		auth = createObject("component","authenticate");
	</cfscript>

    <!------------------------START update Folder-------------------------->
	<cffunction name="updateFolder" access="remote" returnFormat="plain">
		<cfargument name="payLoad" type="any" required="true" />
		
        <cfset this.token=auth.getToken() />

		<cfhttp method="put" url="#app.endpoint.apiUrl#/folders" result="result">
			<cfhttpparam type="header" name="Authorization" value="Bearer #this.token#">
			<cfhttpparam type="header" name="content-type" value="application/json">
			<cfhttpparam type="body" value="#arguments.payLoad#">
		</cfhttp>

		<cfreturn #result.filecontent#>
	</cffunction>
	<!------------------------END update Folder-------------------------->
</cfcomponent>