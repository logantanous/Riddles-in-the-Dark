require('rspec')
require('pry')

class Parcel
  def initialize(h, w, l, d)
    @height = h
    @width = w
    @length = l
    @distance = d
  end

  def distance (baseprice)
    if @distance == "0-5"
      baseprice + 10
    elsif @distance == "5-20"
      baseprice + 15
    elsif @distance == "20+"
      baseprice + 20
    end
  end

  def cost
    volume = @height * @width * @length
    baseprice = 50
    new_price = distance(baseprice)

    if volume <= 50
      new_price + 20
    else
      new_price + 50
    end

  end # cost
end # parcel
