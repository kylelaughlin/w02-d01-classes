require 'pry'

class Soda

  def initialize(options={})
    @brand = options[:brand]
    @calories = options[:calories]
    @volume = options[:volume]
    @sugar = options[:sugar]
    @parent_company = options[:parent_company]
    @price = options[:price]
  end

  def brand
    @brand
  end

  def brand=(new_brand)
    @brand = new_brand
  end

  def calories
    @calories
  end

  def calories=(new_calories)
    @calories = new_calories
  end

  def volume
    @volume
  end
  def volume=(new_volume)
    @volume = new_volume
  end

  def sugar
    @sugar
  end

  def sugar=(new_sugar)
    @sugar = new_sugar
  end

  def parent_company
    @parent_company
  end

  def parent_company=(new_parent_company)
    @parent_company = new_parent_company
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

end
