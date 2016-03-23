require 'pry'

class GuitarPlayer

  attr_accessor = :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
    @sweet_riffs_played = 0
  end
end
