class Shipping.Routers.Products extends Backbone.Router
  routes:
    '': 'index'
    
  index: ->
    products = new Shipping.Collections.Products
    new Shipping.Views.ProductsIndex collection: products
    products.fetch(reset:true)
