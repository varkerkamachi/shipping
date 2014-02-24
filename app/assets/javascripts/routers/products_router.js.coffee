class Shipping.Routers.Products extends Backbone.Router
  routes:
    '': 'index'
    "products/:id/edit" : 'edit'
    
  index: ->
    products = new Shipping.Collections.Products
    new Shipping.Views.ProductsIndex collection: products
    products.fetch(reset:true)

  edit: (product) ->
    # product = new Shipping.Models.Product
    new Shipping.Views.ProductEdit model: product
    # product.fetch(reset:true)
