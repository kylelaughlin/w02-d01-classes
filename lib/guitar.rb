require 'pry'

class Guitar

  def initialize(options={})
    @model = options[:model]
    @brand = options[:brand]
    @pickup_type = options[:pickup_type]
    @color = options[:color]
    @string_brand = options[:string_brand]
  end
  
end
