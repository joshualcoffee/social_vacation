require 'spec_helper'

describe Trip do
  let(:trip) {Trip.new(:name => "Super Fun Trip", :primary_url => "http://www.royalcaribbean.com/findacruise/ports/group/home.do?portCode=LAB")}
  subject{trip}

  it "#images should find and add images to an array" do 
    trip.scrape_images(trip.primary_url).length.should be > 0
  end

end
