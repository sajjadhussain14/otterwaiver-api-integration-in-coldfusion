<cfcomponent name="waiver">
	<cfscript>
		app = createObject("component","config");
		auth = createObject("component","authenticate");
	</cfscript>

	<!------------------------START GET ALL WAIVERS-------------------------->
	<cffunction name="getAllWaivers" access="remote" returnFormat="plain">
		<cfset this.token=auth.getToken() />

		<cfhttp method="get" url="#app.endpoint.apiUrl#/waivers?pageSize=2&pageIndex=1" result="result">
			<cfhttpparam type="header" name="Authorization" value="Bearer #this.token#">
		</cfhttp>

		<cfset  waivers=deserializeJSON(result.filecontent) >
		<cfreturn #waivers#>
	</cffunction>
	<!------------------------END GET ALL WAIVERS-------------------------->

	<!------------------------START GET WAIVER DETAIL BY ID-------------------------->
	<cffunction name="getWaiverById" access="remote" returnFormat="plain">
		<cfargument name="ID" type="any" required="true" />
		<cfset this.token=auth.getToken() />

		<cfhttp method="get" url="#app.endpoint.apiUrl#/waivers/#arguments.ID#" result="result">
			<cfhttpparam type="header" name="Authorization" value="Bearer #this.token#">
		</cfhttp>

		<cfset  waiverDeatil=deserializeJSON(result.filecontent) >
		<cfreturn #waiverDeatil#>
	</cffunction>
	<!------------------------END GET WAIVER DETAIL BY ID-------------------------->
</cfcomponent>