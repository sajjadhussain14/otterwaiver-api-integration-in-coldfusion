
<cfoutput>	
    <cfinclude template = "./includes/header.cfm">
        <div class="container-fluid vh-100">
            <h3 >Webhook</h3>

        <div class="row container">
            <div class="col-12 ">
                    <h6 class="text-center">Subscribe</h6>
                <form class="">
                    <div class="mb-3">
                        <label for="" class="form-label">Trigger</label>
                        <input type="text" class="form-control" id="trigger">

                        <label for="" class="form-label">Webhook</label>
                        <input type="text" class="form-control" id="webhook">

                    </div>
                    <button type="button" class="btn btn-secondary" onclick="subscribeUnscribeWebhook()">Subscribe</button>
                    <button type="button" class="btn btn-secondary" onclick="subscribeUnscribeWebhook()">Unsubscribe</button>

                <form>
            </div>
        </div>
    </div>
    <cfinclude template = "./includes/footer.cfm">
</cfoutput>
