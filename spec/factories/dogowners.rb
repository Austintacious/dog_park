# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dogowner, :class => 'Dogowners' do
    owner_id 1
    dog_id 1
  end
end
