
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">
        <div class="container-fluid vh-100">
            <h4 class="text-center">Update Folder</h4>

        <div class="row">
            <form>
                <div class="mb-3">
                    <label for="" class="form-label">Folder ID</label>
                    <input type="text" class="form-control" id="folderID">

                    <label for="" class="form-label">Folder Title</label>
                    <input type="text" class="form-control" id="folderTitle">

                </div>
                <button type="button" class="btn btn-secondary" onclick="updateFolderRequest()">Submit</button>
            <form>
        </div>


        </div>
    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
