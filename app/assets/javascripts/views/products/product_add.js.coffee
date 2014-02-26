class Shipping.Views.ProductAdd extends Backbone.View
  url: 'product/:id'
  #el: '.add_product_form_area'
  template: JST['products/index']
  model: Shipping.Views.Product
  
  render: ->
    $(@el).html(@template({model: @model}))
    @