window.Shipping =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Shipping.Routers.Products
    Backbone.history.start()

$(document).ready ->
  Shipping.initialize()
