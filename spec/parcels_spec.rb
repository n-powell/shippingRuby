require('rspec')
require('parcels') #requires lib file that is .rb

describe() do
  it("calculates shipping cost for a simple percel") do #doesnt matter english explination
    parcel = Parcel.new(1,2,3,4)
    expect(parcel.ship()).to(eq(16))

  end
end
