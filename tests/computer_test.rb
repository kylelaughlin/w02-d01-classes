require_relative "test_helper.rb"
require_relative "../lib/computer.rb"

class ComputerTest < Minitest::Test

  def test_create_computer_under_normal_circumstances
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    refute_nil(computer)
  end

  def test_ram_getter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal(4, computer.ram)
  end

  def test_ram_setter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    computer.ram = 8
    assert_equal(8, computer.ram)
  end

  def test_harddrive_size_getter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal(250, computer.harddrive_size)
  end

  def test_harddrive_size_setter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    computer.harddrive_size = 500
    assert_equal(500, computer.harddrive_size)
  end

  def test_screen_size_getter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal(13, computer.screen_size)
  end

  def test_screen_size_setter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    computer.screen_size = 15
    assert_equal(15, computer.screen_size)
  end

  def test_brand_getter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal("Mac", computer.brand)
  end

  def test_brand_setter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    computer.brand = "PC"
    assert_equal("PC", computer.brand)
  end

  def test_processor_speed_getter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal(2.4, computer.processor_speed)
  end

  def test_processor_speed_setter
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    computer.processor_speed = 4.8
    assert_equal(4.8, computer.processor_speed)
  end

  def test_upgrade_ram
    computer = Computer.new(ram: 4, harddrive_size: 250, screen_size: 13, brand: "Mac", processor_speed: 2.4)
    assert_equal(4, computer.ram)
    computer.upgrade_ram(4)
    assert_equal(8, computer.ram)
  end
  
end
