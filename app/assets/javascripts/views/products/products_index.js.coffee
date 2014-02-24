class Shipping.Views.ProductsIndex extends Backbone.View
  el: "#application"
  template: JST['products/index']
  events:
    'click #add_product': 'createProduct'

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
    @collection.create name: @$('.product_name').val()
    @$('.product_name').val('')


  addProduct: (product) ->
    view = new Shipping.Views.ProductsItem model: product
    @$('#prodlist').append(view.render().el)
    @