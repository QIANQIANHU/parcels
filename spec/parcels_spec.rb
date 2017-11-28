require('sinatra')
require('parcels')

describe(Parcel) do

  describe("#price_on_dimension?") do
    it("returns true if dimension is bigger or equal than weight") do
      test_parcel = Parcel.new(24, 23)
      expect(test_parcel.price_on_dimension?()).to(eq(true))
    end
  end
  describe("#price_on_weight?") do
    it("returns true if dimension is smaller than weight") do
      test_parcel = Parcel.new(12, 23)
      expect(test_parcel.price_on_weight?()).to(eq(true))
    end
  end

end
