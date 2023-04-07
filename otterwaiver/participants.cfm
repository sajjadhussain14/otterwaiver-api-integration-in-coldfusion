
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">
        <cfscript>
            latestParticipants=[]
            participantsObj = createObject("component","src.components.participants");
            latestParticipants=participantsObj.getLatestParticipants();
        </cfscript>

        <div class="container-fluid vh-100">
            <h4 class="text-center">Latest Participants</h4>
            <p>The list of Latest Participants</p>
            <cfdump var = "#latestParticipants#" >
        </div>

    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
