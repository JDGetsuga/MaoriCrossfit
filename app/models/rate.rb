class Rate < ActiveRecord::Base
  belongs_to :service
  has_many :memberships
end
