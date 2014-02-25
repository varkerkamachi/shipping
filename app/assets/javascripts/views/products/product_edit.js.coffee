class Shipping.Views.ProductEdit extends Backbone.View
  url: "products/:id/edit"
  el : '#application'
  template: JST['products/edit']
  events:
    'click #submittor': 'updateProduct'

  initialize: ->
    console.log @id, "mid: ", @model.id
    # window.location = $(@url)
    #@model.bind 'reset', @render, @

  render: ->
    $(@el).html(@template(model: @model))
    @

  updateProduct: ->
    form = $(@el).find('form.product_form')
    @model.save({
      name: form.find('.product_name').val(),
      description: form.find('textarea').text(),
      height: form.find('.product_height').val(),
      length: form.find('.product_length').val(),
      weight: form.find('.product_weight').val(),
      width: form.find('.product_width').val(),
      value: form.find('.product_value').val(),
    })
    console.log "updating: ", @model.toJSON(), "name: ", form.find('name').val()