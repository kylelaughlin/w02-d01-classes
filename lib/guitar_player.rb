require 'pry'
require_relative 'guitar.rb'

class GuitarPlayer

  attr_accessor :name, :age, :sweet_riffs_played

  def initialize(name:, age:)
    @name = name
    @age = age
    @sweet_riffs_played = 0
    @guitar = nil
  end

  def guitar
    @guitar
  end

  def guitar=(guitar)
    @guitar = guitar
  end

  def pick_a_guitar=(new_guitar)
    if !new_guitar.player.nil?
      old_player = new_guitar.player
      old_player.guitar = nil
    end
    @guitar = new_guitar
    new_guitar.player = self
  end

  def play_sweet_riff
    @sweet_riffs_played += 1
    self.guitar.sweet_riffs_executed += 1
  end

end
