
window.myChromePlugTools =

  privateKeyID : 'PRIVATE_KEY_ID'

  sendMsg : (key, data, tabID = false) ->

    data[privateKeyID] = key

    if (tabID)
      chrome.tabs.sendMessage(tabID,data)

    chrome.extension.sendRequest(data)


  onReceive : (keys,callback, NoMsgID = false) ->

    chrome.extension.onMessage.addListener(
      (obj, sender)->
        if NoMsgID or keys.indexOf(obj[privateKeyID]) != -1
          callback(obj, obj[privateKeyID], sender)
    )

