require 'pry'

class Guitar

  def initialize(options={})
    @model = options[:model]
    @brand = options[:brand]
    @pickup_type = options[:pickup_type]
    @color = options[:color]
    @string_brand = options[:string_brand]
  end

  attr_reader :model

  attr_reader :brand

  attr_accessor :pickup_type

  attr_accessor :color

  attr_accessor :string_brand

end
