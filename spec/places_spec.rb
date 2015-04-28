require('rspec')
require('places')

describe(Place) do
  describe('#description') do
    it("returns a description of Place") do
    test_place = Place.new("England")
    expect(test_place.description()).to(eq("England"))
    end
  end
  describe('.all') do
    it("begins as an empty empty") do
    expect(Place.all()).to(eq([]))
    end
  end
end
