require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('tells you the volume of a parcel') do
      test_parcel = Parcel.new(3, 3, 3)
      expect(test_parcel.volume()).to(eq(27))
    end
  end

  # describe('#volume') do
  #   it('tells you the volume of a parcel') do
  #     test_parcel = Parcel.new(3, 3, 3)
  #     expect(test_parcel.volume()).to(eq(27))
  #   end
  # end

end
