class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length.to_i()
    @width = width.to_i()
    @height = height.to_i()
    @weight = weight.to_i()
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
