require 'spec_helper'

describe Owner do
  let(:invalid_names) {['', nil, '12ab34', 'ab12cd']}
  let(:invalid_emails) {['blah.com', '@blah.com', '@@.com', 'blah@.com', 'blah', '@@blah.com', 'com', '.com']}

  it {should have_valid(:first_name).when('Austin')}
  it {should_not have_valid(:first_name).when(*invalid_names)}

  it {should have_valid(:last_name).when('Winslow')}
  it {should_not have_valid(:last_name).when(*invalid_names)}

  it {should have_valid(:email).when('blah@blah.com')}
  it {should_not have_valid(:email).when(*invalid_emails)}

  it 'should be unique' do
    owner1 = FactoryGirl.build(:owner)
    owner2 = FactoryGirl.build(:owner)
    expect(owner1.save).to be_true
    expect(owner2.save).to be_false
  end

  it {should have_many :dogs}
end
