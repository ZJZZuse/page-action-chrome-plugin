
class window.PageAction

  fireAction: ->

  getFireCondition : ->
    true

  delayTime : 500





class window.PageActionController

  constructor : ->
    @pageActions = []

  doAction : ->

  onFinished : (result) ->

  onError : (err) ->

  add : (eles...) ->
    for ele in eles
      @pageActions.push(ele)
  
  


