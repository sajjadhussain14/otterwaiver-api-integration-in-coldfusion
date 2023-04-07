
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">

        <cfscript>
            latestParticipantsCheckins=[]
            participantsObj = createObject("component","src.components.participants");
            latestParticipantsCheckins=participantsObj.getLatestParticipantsCheckins();
        </cfscript>

        <div class="container-fluid vh-100">
            <h4 class="text-center">Latest Participants Checkins</h4>
            <p>The list of Latest Participants Checkins</p>
            <cfdump var = "#latestParticipantsCheckins#" >
        </div>
    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
