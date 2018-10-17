require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
  end

  def test_it_has_an_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_it_has_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_rooms_can_exists
    room_1 = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room_1
    room_2 = Room.new(:bedroom, 11, 15)
    assert_instance_of Room, room_2
  end

  def test_rooms_in_houses_exists
    skip
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, house.add_room(room_1)
  end

end

# pry(main)> house.add_room(room_1)
# #=> [#<Room:0x00007fccd29b5720...]
#
# pry(main)> house.add_room(room_2)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# pry(main)> house.rooms
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
