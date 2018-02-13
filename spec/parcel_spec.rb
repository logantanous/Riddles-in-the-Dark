require('rspec')
require('index')

describe(Parcel) do
  describe("#cost")do
    it("returns shipping cost")do
      dimensions= Parcel.new(3, 3, 3, "5-20")
      expect(dimensions.cost()).to(eq(85))
    end
  end

  describe('#cost') do
    it('returns shipping cost') do
      instance = Parcel.new(9, 9, 9, "20+")
      expect(instance.cost()).to(eq(120))
    end
  end

end
