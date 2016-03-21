require 'pry'

class Computer

  def initialize(options={})
    @brand = options[:brand]
    @harddrive_size = options[:harddrive_size]
    @screen_size = options[:screen_size]
    @ram = options[:ram]
    @processor_speed = option[:processor_speed]
  end

  def brand
    @brand
  end

  def harddrive_size
    @harddrive_size
  end

  def screen_size
    @screen_size
  end

  def ram
    @ram
  end

  def processor_speed
    @processor_speed
  end

end
