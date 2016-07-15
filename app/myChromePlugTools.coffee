
window.myChromePlugTools =

  privateKeyID : 'PRIVATE_KEY_ID'

  sendMsg : (key, data, tabID = false) ->

    data[this.privateKeyID] = key

    if (tabID)
      chrome.tabs.sendMessage(tabID,data)
      return

    chrome.extension.sendMessage(data)

  onReceiveKey : (key,callback, NoMsgID = false) ->

    this.onReceive([key],callback,NoMsgID)

  onReceive : (keys,callback, NoMsgID = false) ->

    me = this


    chrome.extension.onMessage.addListener(
      (obj, sender)->
        if NoMsgID or keys.indexOf(obj[me.privateKeyID]) != -1
          callback(obj,sender, obj[me.privateKeyID] )
    )

