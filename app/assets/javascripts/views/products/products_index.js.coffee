class Shipping.Views.ProductsIndex extends Backbone.View
  el: "#application"
  formEl: "form.product_form"
  template: JST['products/index']
  model: Shipping.Views.Product
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

  createProduct: ->
    @collection.create @fetchData()
    @toggleAddForm()

  toggleAddForm: ->
    frmarea = $(@el).find('.add_product_form_area')
    frmarea.slideToggle()
    
  addProduct: (product) ->
    view = new Shipping.Views.ProductsItem model: product
    @$('#prodlist').append(view.render().el)
    @

  fetchData: ->
    data = {
      name: $('.product_name').val(),
      description: $('textarea').val(),
      width: $('.product_width').val(),
      height: $('.product_height').val(),
      length: $('.product_length').val(),
      weight: $('.product_weight').val(),
      value: $('.product_value').val()
    }