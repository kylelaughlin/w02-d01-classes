require_relative 'test_helper.rb'
require_relative '../lib/guitar_player.rb'

class GuitarPlayerTest < Minitest::test_helper

 def test_create_guitar_player_under_normal_circumstances
   player = GuitarPlayer.new(name: "Kyle", age: 28)
   refute_nil(player)
 end

end
