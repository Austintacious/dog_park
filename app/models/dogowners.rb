class Dogowners < ActiveRecord::Base
  validates_numericality_of :owner_id, :dog_id
  belongs_to :dog
  belongs_to :owner
end
