require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_readable_attributes
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal "King Soopers", cart.name
    assert_equal 30, cart.capacity
    assert_equal [], cart.products
  end

  def test_it_can_add_product
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [product1], cart.add_product(product1)
  end

  def test_it_has_total_number_of_products

    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:paper, 'toilet paper', 3.70, '10')
    cart = ShoppingCart.new("King Soopers", "30items")
    cart.add_product(product1)
    cart.add_product(product2)

    assert_equal 20, cart.total_number_of_products
  end

  def test_it_is_full
    
    product1 = Product.new(:paper, 'toilet paper', 3.70, '30')
    cart = ShoppingCart.new("King Soopers", "30items")
    cart.add_product(product1)

    assert_equal true, cart.is_full?
  end


end
