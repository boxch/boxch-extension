console.log("run");


chrome.runtime.onMessage.addListener(function(message, sender, sendResponse){
    console.log(message);
 });


 globalThis.addEventListener("connect", (event) => {
    console.log(event);
  });

