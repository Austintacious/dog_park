require 'spec_helper'

describe Dogowners do
  let(:invalids) {['', nil, "abc", "12abc34", "ab123cd"]}
  it {should have_valid(:owner_id).when(1)}
  it {should_not have_valid(:owner_id).when(*invalids)}
  it {should have_valid(:dog_id).when(1)}
  it {should_not have_valid(:dog_id).when(*invalids)}
  it {should belong_to :owner}
  it {should belong_to :dog}
end
