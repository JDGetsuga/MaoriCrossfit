class Membership < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :rate
  has_many :classrecords
  has_many :detail_sales
end
