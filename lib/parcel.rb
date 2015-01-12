class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @length.*(@width).*(@height)
  end

  define_method(:cost_to_ship) do
    price = 0
    price = price.+(@weight*(10))
    if self.volume.<=(10)
      price = price.+(2)
    elsif self.volume.<=(20)
      price = price.+(4)
    else
      price = price.+(6)
    end
  end
end
