class Shipping.Views.ProductsIndex extends Backbone.View
  el: "#application"
  template: JST['products/index']
  events:
    'click label.add_trigger.control-label' : 'toggleAddForm'
    'click #submittor': 'createProduct'

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
    @toggleAddForm()

  toggleAddForm: (e) ->
    e.preventDefault
    frmarea = $(@el).find('.add_product_form_area')
    frmarea.slideToggle()
    
  addProduct: (product) ->
    view = new Shipping.Views.ProductsItem model: product
    @$('#prodlist').append(view.render().el)
    @