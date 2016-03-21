require 'pry'

class Computer

  def initialize(options={})
    @brand = options[:brand]
    @harddrive_size = options[:harddrive_size]
    @screen_size = options[:screen_size]
    @ram = options[:ram]
    @processor_speed = options[:processor_speed]
  end

  def brand
    @brand
  end

  def brand=(new_brand)
    @brand = new_brand
  end

  def harddrive_size
    @harddrive_size
  end

  def harddrive_size=(new_harddrive_size)
    @harddrive_size = new_harddrive_size
  end

  def screen_size
    @screen_size
  end

  def screen_size=(new_screen_size)
    @screen_size = new_screen_size
  end

  def ram
    @ram
  end

  def ram=(new_ram)
    @ram = new_ram
  end

  def processor_speed
    @processor_speed
  end

  def processor_speed=(new_processor_speed)
    @processor_speed = new_processor_speed
  end

  def upgrade_ram(ram_added)
    @ram += ram_added
    puts "Upgraded to #{@ram} GBs of ram."
  end

end

binding.pry
