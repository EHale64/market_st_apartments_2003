class Apartment

  attr_accessor :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(number: , monthly_rent:,  bathrooms:, bedrooms:)
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renter = nil
  end
end

def add_renter(renter)
  @renter = renter
end
