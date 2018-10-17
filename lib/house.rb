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
    @rooms.select(room)
  end

  def area
    # area of house
    # area of rooms combined
    # iterate through array of rooms, add the area of each room
    # set equal to new variable
    # repeat that variable at the end
  end

end
