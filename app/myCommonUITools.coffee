window.myCommonUITools =

  addButton : (getPosition, handler, text) ->

    btnClass = 'positionButtonMeZ'

    button = "<button class='#{btnClass}'>#{text}</button>" 

    getPosition().prepend(button);

    $("button.#{btnClass}").click(handler);


  addDefaultButton : (getPosition, handler, text) ->

    id = 'addDefaultButtonIdZ'

    button = "<button id='#{id}'>#{text}</button>"

    getPosition().prepend(button);

    $("button\##{id}").click(handler);


  addUrlDefault : (url, text) ->
    ele = "<a href='#{url}' >#{text}</a>"

    $('body').prepend(ele)

  setTextDefault : (text) ->

    id = "addTextDefaultDivIdZ"

    ele = "<div id = '#{id}'>#{text}</div>"

    textEle = $("div\##{id}")

    if  textEle.length == 0
      $('body').prepend(ele)
    else
      textEle.html('')
      textEle.html(text)