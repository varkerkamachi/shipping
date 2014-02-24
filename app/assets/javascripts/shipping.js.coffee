window.Shipping =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Shipping.Routers.Products
    Backbone.history.start()
    console.log 'Hello!'

$(document).ready ->
  Shipping.initialize()
