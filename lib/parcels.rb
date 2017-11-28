class Parcel
  def initialize(dimension, weight)
    @dimension = dimension
    @weight = weight
  end
  def price_on_dimension?
    @dimension >= @weight
  
  end
  def price_on_weight?
    @dimension < @weight

  end
end
