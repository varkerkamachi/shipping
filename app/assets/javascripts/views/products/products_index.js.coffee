class Shipping.Views.ProductsIndex extends Backbone.View
  el: "#application"
  template: JST['products/index']
  events:
    'keyPress #add_product': 'createProduct'

  initialize: ->
    @collection.bind 'reset', @render, @
    @collection.bind 'add', @addProduct, @

  render: ->
    $(@el).html(@template())
    
    @collection.each (product) =>
      view = new Shipping.Views.ProductsItem  model: product
      @$('#prodlist').append(view.render().el)
    @

  createProduct: (e) ->
    return if e.keyCode != 13
    @collection.create name: @$('#add_product').val()
    @$('#add_product').val('')

  addProduct: (product) ->
    view = new Shipping.Views.ProductsItem model: product
    @$('#prodlist').append(view.render().el)
    @