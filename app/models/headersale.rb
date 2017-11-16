class Headersale < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  has_many :detail_sales
end
