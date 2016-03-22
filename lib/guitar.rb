require 'pry'

class Guitar

  attr_reader :model, :brand
  attr_accessor :pickup_type, :color

  def initialize(model:, brand:, pickup_type:, color:)
    @model = model
    @brand = brand
    @pickup_type = pickup_type
    @color = color
  end

end
