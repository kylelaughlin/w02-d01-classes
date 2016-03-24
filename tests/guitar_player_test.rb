require_relative 'test_helper.rb'
require_relative '../lib/guitar_player.rb'

class GuitarPlayerTest < Minitest::Test

  def test_create_guitar_player_under_normal_circumstances
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    refute_nil(player)
  end

  def test_name_getter
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    assert_equal("Kyle", player.name)
  end

  def test_name_setter
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    player.name = "Travis"
    assert_equal("Travis", player.name)
  end

  def test_age_getter
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    assert_equal(28, player.age)
  end

  def test_age_setter
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    player.age = 29
    assert_equal(29, player.age)
  end

  def test_guitar_getter
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    player.pick_a_guitar = guitar
    assert_equal(guitar, player.guitar)
  end

  def test_assign_guitar_to_player
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    assert_nil(player.guitar)
    player.pick_a_guitar = guitar
    refute_nil(player.guitar)
  end

  def test_sweet_riffs_executed
    player = GuitarPlayer.new(name: "Kyle", age: 28)
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    player.pick_a_guitar = guitar
    assert_equal(0,player.guitar.sweet_riffs_executed)
    player.play_sweet_riff
    assert_equal(1, player.sweet_riffs_played)
    assert_equal(1, guitar.sweet_riffs_executed)
  end

end
