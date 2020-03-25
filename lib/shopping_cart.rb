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
    total = 0
    @products.each do |i|
    total += i.quantity
    end
    total
  end

  def is_full?
    if total_number_of_products >= 30
      true
    else
      false
    end

  end


end
