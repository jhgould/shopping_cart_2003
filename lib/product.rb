require 'pry';

class Product

  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_f
  end

  def total_price
    @unit_price * @quantity
  end

  def is_hoarded?
    if @quantity == 0
        true
    else
      false
    end
  end

  def hoard
    loop do
      if @quantity == 0
        break
      else
        @quantity -= 1
    end
  end


end
end
