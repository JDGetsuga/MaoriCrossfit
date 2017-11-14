class Membership < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :rate
end
