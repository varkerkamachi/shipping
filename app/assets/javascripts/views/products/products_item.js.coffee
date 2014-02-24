class Shipping.Views.ProductsItem extends Backbone.View
  tagName: 'li'
  className: 'span12 product-row'
  template: JST['products/item']
  events:
    'click a.delete_link' : 'deleteProduct'

  initialize: ->
    @model.bind 'destroy', @remove, @

  render: ->
    $(@el).html(@template(product: @model))
    @

  deleteProduct: ->
    @model.destroy()