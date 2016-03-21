require 'pry'

class Soda

  def initialize(options={})
    @brand = options[:brand]
    @calories = options[:calories]
    @volume = options[:volume]
    @sugar = options[:sugar]
    @parent_company = options[:parent_company]
  end

  def brand
    @brand
  end

  def calories
    @calories
  end

  def volume
    @volume
  end

  def sugar
    @sugar
  end

  def parent_company
    @parent_company
  end
  
end
