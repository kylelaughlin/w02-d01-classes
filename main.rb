require 'pry'
require_relative "lib/guitar_player.rb"
require_relative "lib/guitar.rb"

guitar_players = []
guitars = []

def create_a_guitar_player
  puts "\n\nCREATE AN AWESOME GUITAR PLAYER"
  print "\nWhat is your awesome guitar player's name? "
  name = gets.chomp
  print "\nWhat is your awesome guitar player's age? "
  age = gets.chomp.to_i

  player = GuitarPlayer.new(name: name, age: age)
  puts "\n\n####################################\n"
  puts "\nSweet! Guitar player #{player.name} is ready to melt some faces!"
  puts "\n####################################"
  player
end

def create_a_guitar
  puts "\n\nCREATE A WICKED GUITAR"
  print "\nWhat is the guitar's model? "
  model = gets.chomp
  print "\nWhat is the guitar's brand? "
  brand = gets.chomp
  print "\nWhat color is the guitar? "
  color = gets.chomp.downcase

  guitar = Guitar.new(model: model, brand: brand, color: color)
  puts "\n\n####################################\n"
  puts "\nGroovy! That #{color} #{model} is ready to rock!"
  puts "\n####################################"
  guitar
end

def select_a_guitar_player(guitar_players, current_guitar)
  selection = nil
  if !guitar_players.empty?
    choice = -1
    while choice < 0 || choice >= guitar_players.length
      puts "\nSelect a guitar player.\n\nChoose from the following:\n"
      guitar_players.each_with_index do |guitar_player, index|
        puts "#{index}. #{guitar_player.name}"
      end
      print "\nPlease select a guitar player: "
      choice = gets.chomp.to_i
    end
    selection = guitar_players[choice]
    if !current_guitar.nil?
      selection.pick_a_guitar = current_guitar
    end
  else
    puts "No guitar players created yet!"
  end
  selection
end

def select_a_guitar(guitars, current_player)
  selection = nil
  if !guitars.empty?
    choice = -1
    while choice < 0 || choice >= guitars.length
      puts "\nSelect a guitar.\n\nChoose form the following:\n"
      guitars.each_with_index do |guitar, index|
        puts "#{index}. #{guitar.color} #{guitar.brand} #{guitar.model}"
      end
      print "\nPlease select a guitar: "
      choice = gets.chomp.to_i
    end
    selection = guitars[choice]
    if !current_player.nil?
      current_player.pick_a_guitar = selection
    end
  else
    puts "No guitars created yet!"
  end
  selection
end

def view_current_player_stats(current_player, current_guitar)
  if !current_player.nil? && !current_guitar.nil?
    puts "\n\n####################################\n"
    puts "CURRENT GUITAR PLAYER AND GUITAR STATS"
    puts "\nThe current player is a #{current_player.age} year old named #{current_player.name}."
    puts "#{current_player.name} has played #{current_player.sweet_riffs_played} sweet riffs so far.\n"
    puts "\n#{current_player.name} is currently shreding on a #{current_guitar.color} #{current_guitar.brand} #{current_guitar.model}."
    puts "This guitar has had #{current_guitar.sweet_riffs_executed} sweet riffs played on it so far."
    puts "\n####################################"
  else
    puts "\n\n####################################\n"
    puts "\nNo player has been selected" if current_player.nil?
    puts "\nNo guitar has been selected" if current_guitar.nil?
    puts "\n####################################"
  end
end

def current_player_plays_sweet_riff(current_player, current_guitar)
  if !current_player.nil? && !current_guitar.nil?
    current_player.play_sweet_riff
    puts "\n\n####################################\n"
    puts "\n#{current_player.name} just played a riff sweeter than a jelly donut!"
    puts "\n####################################"
  else
    puts "\nNo guitar player selected!" if current_player.nil?
    puts "\nNo guitar selected!" if current_guitar.nil?
  end
end

  puts "\n\nWELCOME TO THE GUITAR ROOM"

  current_player = nil
  current_guitar = nil

  choice = -1
  while choice != 0
    
    puts "\nCurrent guitar player: #{current_player.name}" unless current_player.nil?
    puts "Current guitar: #{current_guitar.color} #{current_guitar.model}" unless current_guitar.nil?
    puts "\n\nYour choices are:\n1. Create a new guitar player\n2. Create a new guitar\n3. Select a player\n4. Select a guitar\n5. View current player and guitar stats\n6. PLAY A SWEET RIFF\n0. Exit"
    print "\n\nWhat option do you choose? "
    choice = gets.chomp.to_i

    if choice == 1
      guitar_players << create_a_guitar_player
    elsif choice == 2
      guitars << create_a_guitar
    elsif choice == 3
      current_player = select_a_guitar_player(guitar_players, current_guitar)
      puts "\n\n####################################\n" unless current_player.nil?
      puts "\n#{current_player.name} is now the current guitar player." unless current_player.nil?
      puts "\n####################################" unless current_player.nil?
    elsif choice == 4
      current_guitar = select_a_guitar(guitars, current_player)
      puts "\n\n####################################\n" unless current_guitar.nil?
      puts "\nThe #{current_guitar.color} #{current_guitar.model} is now the current guitar." unless current_guitar.nil?
      puts "\n####################################" unless current_guitar.nil?
    elsif choice == 5
      view_current_player_stats(current_player, current_guitar)
    elsif choice == 6
      current_player_plays_sweet_riff(current_player, current_guitar)
    elsif choice == 0
      puts "\n\nThank you for visiting the GUITAR ROOM\n\n\n"
    else
      puts "\n\nNot a valid selection. Please select again."
    end
  end
