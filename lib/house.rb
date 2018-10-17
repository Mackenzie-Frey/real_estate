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

  def price_per_square_foot
    area_of_house = 0
    @rooms.each do |element|
      area_of_house += element.area
      end
    (@price.delete("$").to_i / (area_of_house + 0.00)).round(2)
  end

  def rooms_sorted_by_area
   .sort
  end

end
