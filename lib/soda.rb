require 'pry'

class Soda

  def initialize(options={})
    @brand = options[:brand]
    @calories = options[:calories]
    @volume = options[:volume]
    @sugar = options[:sugar]
    @parent_company = options[:parent_company]
  end

end
