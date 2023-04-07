<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otter Waiver Integration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="https://www.celerant.com/wp-content/uploads/2019/02/cropped-Celerant_Favicon_512x512-32x32.png" sizes="32x32">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./src/otterwaiver.css">
</head>
<body>
<cfoutput>
    <div class="container-fluid ">
        <header class="row">
            <nav class="navbar navbar-expand-lg navbar-light border-bottom mb-5">
                <div class="container-fluid">
                    <a class="navbar-brand border-end p-2" href="/otterwaiver/">Home</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="##navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <a class="nav-link border-end" href="/otterwaiver/waivers.cfm">Waivers</a>
                            <a class="nav-link border-end" href="/otterwaiver/waiver-detail.cfm">Waiver Detail by ID</a>
                            <a class="nav-link border-end" href="/otterwaiver/participants.cfm">Latest Participants</a>
                            <a class="nav-link border-end" href="/otterwaiver/participants-checkins.cfm">Latest Participants Checkins</a>
                            <a class="nav-link border-end" href="/otterwaiver/folder.cfm">Folder</a>
                            <a class="nav-link" href="/otterwaiver/webhook.cfm">Webhook</a>

                        </div>
                    </div>
                </div>
            </nav>
        </header>
</cfoutput>
