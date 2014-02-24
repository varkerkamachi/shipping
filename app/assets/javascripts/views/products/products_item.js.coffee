class Shipping.Views.ProductsItem extends Backbone.View
  tagName: 'li'
  className: 'span12 product-row'
  template: JST['products/item']
  events:
    'click a.delete_link' : 'deleteProduct'
    'click span.product_name' : 'editProduct'

  initialize: ->
    @model.bind 'destroy', @remove, @

  render: ->
    $(@el).html(@template(product: @model))
    @

  deleteProduct: ->
    @model.destroy()

  editProduct: ->
    console.log @model, "name: ", @model.attributes.name
    view = new  Shipping.Views.ProductEdit model: @model
    @$('#edit_area').append(view.render().el)
    @