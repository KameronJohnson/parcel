require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('tells you the volume of a parcel') do
      test_parcel = Parcel.new(3, 3, 3, 1)
      expect(test_parcel.volume()).to(eq(27))
    end
  end

  describe('#cost_to_ship') do
    it('tells you the cost to ship that parcel') do
      test_parcel = Parcel.new(3, 3, 3, 1)
      expect(test_parcel.cost_to_ship()).to(eq(16))
    end
  end

end
