###
  原素型的action
###
class window.PageActionJQ extends PageAction

  constructor: (@getElement, @fireActionCus) ->

  ###
  对象实现
###

  getElement : ->

  fireActionCus : (ele) -> 
    


  getFireCondition : ->
    @getElement()

  fireAction : ->
    @fireActionCus(@getElement())


