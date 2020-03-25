#shopping cart class
require './lib/product'
require 'pry';

class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    if product.is_hoarded? == false
        @products << product
    else
      p "this product has been hoarded"
    end
  end

  def total_number_of_products
    @products[0].quantity
  end

  def is_full?

    if @products[0].quantity >= 30
      true
    else
      false
    end
  end



end
