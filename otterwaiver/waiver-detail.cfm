
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">
        <cfscript>
            ID='bab83ed8-72ca-45ad-8861-db57225c62c2'
            waiverDetail={}
            waiversObj = createObject("component","src.components.waiver");
            waiverDetail=waiversObj.getWaiverById(ID);
        </cfscript>
        <div class="container-fluid vh-100">
            <h4 class="text-center">Waiver Detail</h4>
            <p>Details of waiver by ID</p>
            <cfdump var = "#waiverDetail#" >
        </div>
    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
