require 'pry'

class Computer

  attr_accessor :brand, :harddrive_size, :screen_size, :ram, :processor_speed

  def initialize(options={})
    @brand = options[:brand]
    @harddrive_size = options[:harddrive_size]
    @screen_size = options[:screen_size]
    @ram = options[:ram]
    @processor_speed = options[:processor_speed]
  end

  # Upgrades the ram by the integer passed as a parameter and puts the new ram amount
  #
  # +ram_added: an integer representing the amount of ram to be added
  #
  # Returns the amount of the new total ram
  def upgrade_ram(ram_added)
    @ram += ram_added
    puts "Upgraded to #{@ram} GBs of ram."
    @ram
  end

end

#binding.pry
