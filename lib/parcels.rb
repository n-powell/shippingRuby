# this is where you put the code
class Parcel
  define_method(:initialize) do |height, width, depth, weight, speed|
    height = height
    width = width
    depth = depth
    @weight = weight
    @volume = height * width * depth
    @speed = speed
  end

  define_method(:ship) do
    shipping_cost= (@weight * (@volume-2))
    if (@speed == 1 || @speed == 2)
      shipping_cost += 10
    else
      shipping_cost += 5
    end
  end

end
