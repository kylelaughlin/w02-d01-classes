require 'pry'

class Guitar

  #move attr_reader, _writer, & _accessor here
  attr_reader :model, :brand
  attr_accessor :pickup_type, :color, :string_brand

  def initialize(options={})
    @model = options[:model]
    @brand = options[:brand]
    @pickup_type = options[:pickup_type]
    @color = options[:color]
    @string_brand = options[:string_brand]
  end

end
