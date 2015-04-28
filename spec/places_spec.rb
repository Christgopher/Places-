require('rspec')
require('places')

describe(Place) do
  describe('#description') do
    it("lets you give it a description") do
    test_place = Place.new("England")
    expect(test_place.description()).to(eq("England"))
    end
  end
  describe('.all') do
    it("begins as an empty array") do
    expect(Place.all()).to(eq([]))
    end
  end
  describe('#save') do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Australia")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
  describe('.clear') do
    it("empties out all the saved places") do
      Place.new("France").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
