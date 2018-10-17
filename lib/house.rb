class House

  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(room)
    @rooms.select do |element|
      element.category == room
    end
  end

  def area
    area_of_house = 0
    @rooms.each do |element|
      area_of_house += element.area
      end
    area_of_house
  end

end
