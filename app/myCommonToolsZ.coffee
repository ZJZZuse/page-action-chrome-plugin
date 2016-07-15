window.myCommonToolsZ =

  fireActionByCusCondition: (condionF, action, once = true ,interval = 500, delay = 100) ->
    id = setInterval(->
      if condionF()

        if once
          clearInterval(id) 

        setTimeout(->
          action()
        , delay)

    , interval)




