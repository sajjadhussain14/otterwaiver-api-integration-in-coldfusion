
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">
        <cfscript>
            waivers=[]
            waiversObj = createObject("component","src.components.waiver");
            waivers=waiversObj.getAllWaivers();
        </cfscript>
        <div class="container-fluid vh-100">
            <h4 class="text-center">All Waivers</h4>
            <p>The list of created All waivers</p>
            <cfdump var = "#waivers#" >
        </div>
    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
