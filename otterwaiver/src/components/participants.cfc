<cfcomponent name="Participants">

	<cfscript>
		app = createObject("component","config");
		auth = createObject("component","authenticate");
	</cfscript>

	<!------------------------START GET ALL WAIVERS-------------------------->
	<cffunction name="getLatestParticipants" access="remote" returnFormat="plain">
	  	<cfset this.token=auth.getToken() />

		<cfhttp method="get" url="#app.endpoint.apiUrl#/participants/latest/checkins" result="result">
			<cfhttpparam type="header" name="Authorization" value="Bearer #this.token#">
		</cfhttp>

		  <cfset  participants=deserializeJSON(result.filecontent) >
		<cfreturn #participants#>
	</cffunction>
	<!------------------------END GET ALL WAIVERS-------------------------->

	<!------------------------START GET WAIVER DETAIL BY ID-------------------------->
	<cffunction name="getLatestParticipantsCheckins" access="remote" returnFormat="plain">
	  	<cfset this.token=auth.getToken() />

		<cfhttp method="get" url="#app.endpoint.apiUrl#/participants/latest/checkins" result="result">
			<cfhttpparam type="header" name="Authorization" value="Bearer #this.token#">
		</cfhttp>

		  <cfset  participantsCheckins=deserializeJSON(result.filecontent) >
		<cfreturn #participantsCheckins#>
	</cffunction>
	<!------------------------END GET WAIVER DETAIL BY ID-------------------------->
</cfcomponent>