class Shipping.Views.ProductEdit extends Backbone.View
  url: "products/:id/edit"
  el : '#application'
  template: JST['products/edit']
  events:
    'click #submittor': 'updateProduct'

  initialize: ->
    console.log @model
    #@model.bind 'reset', @render, @

  render: ->
    $(@el).html(@template(model: @model))
    @

  updateProduct: (product) ->
    console.log "updating: ", @model.toJSON