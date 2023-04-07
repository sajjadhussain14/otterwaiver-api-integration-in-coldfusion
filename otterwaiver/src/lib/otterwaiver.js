// api developed by Sajjad Hussain Version 1.0

// UPDATE FOLDER
const updateFolderRequest = () => {
  let folderID = "";
  let folderTitle = "";
  let payLoad = {};

  try {
    folderID = document.getElementById("folderID").value;
    folderTitle = document.getElementById("folderTitle").value;
    payLoad = { id: folderID, title: folderTitle };
  } catch (err) {
    console.log("error ", err);
  }

  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/folder.cfc?method=updateFolder",
    method: "POST",
    data: {
      payLoad: JSON.stringify(payLoad),
    },
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
  });
};

// SUBSCRIBE/UNSCRIBE WEBHOOK
const subscribeUnscribeWebhook = () => {
  let trigger = "";
  let webhook = "";
  let payLoad = {};

  try {
    trigger = document.getElementById("trigger").value;
    webhook = document.getElementById("webhook").value;
    payLoad = { trigger: trigger, webhook: webhook };

    console.log(payLoad);
  } catch (err) {
    console.log("error ", err);
  }

  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/webhook.cfc?method=subscribeWebhook",
    method: "POST",
    data: {
      payLoad: JSON.stringify(payLoad),
    },
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
  });
};
