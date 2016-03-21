require 'pry'

class Guitar

  def initialize(options={})
    @model = options[:model]
    @brand = options[:brand]
    @pickup_type = options[:pickup_type]
    @color = options[:color]
    @string_brand = options[:string_brand]
  end

  def model
    @model
  end

  def model=(new_model)
    @model = new_model
  end

  def brand
    @brand
  end

  def brand=(new_brand)
    @brand = new_brand
  end

  def pickup_type
    @pickup_type
  end

  def pickup_type=(new_pickup_type)
    @pickup_type = new_pickup_type
  end

  def color
    @color
  end

  def color=(new_color)
    @color = new_color
  end

  def string_brand
    @string_brand
  end

  def string_brand=(new_string_brand)
    @string_brand = new_string_brand
  end
  
end
