require 'spec_helper'

describe Dog do
  let(:invalids) {['', nil, "12abc34", "ab123cd", 1234]}
  it {should have_valid(:name).when("Koda")}
  it {should_not have_valid(:name).when(*invalids)}
  it {should have_many :owners}
end
