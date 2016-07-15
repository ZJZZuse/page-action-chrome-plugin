###
依赖3个第三方类库
###
class window.PageActionControllerZ extends PageActionController

  ###
1 means Sequential execution
###


  constructor : ->
    @parallelCount = 1
    super()

  ###
  顺序执行pageAction
###

  doAction : ->

    me = this

    async.mapLimit(@pageActions,@parallelCount,
      (ele, callback) ->
        myCommonToolsZ.fireActionByCusCondition(
          ->
            ele.getFireCondition()
        ,
          ->
            err = null
            rT = ele.fireAction()
            if rT && rT[1]
              err = rT[0]
            callback(err, rT)
        ,
          null,
          ele.delayTime
        )
    ,
      (err, result) ->
        if err
          me.onError(err)
          return

        me.onFinished(result)

    )
