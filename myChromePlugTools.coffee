
window.myChromePlugTools =

  privateKeyID : 'PRIVATE_KEY_ID'

  sendMsg : (key, data) ->

    data[privateKeyID] = key

    chrome.extension.sendRequest(data)

  onReceive : (keys,callback) ->

    chrome.extension.onMessage.addListener(
      (obj, sender)->
        if keys.contains obj[privateKeyID]
          callback(obj, obj[privateKeyID], sender)
    )

