class Dog < ActiveRecord::Base
  validates_presence_of :name
  validates :name, :format => {:with => /\A[a-zA-Z\s]+\z/}
  has_many :owners
end
