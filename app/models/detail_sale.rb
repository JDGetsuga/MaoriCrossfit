class DetailSale < ActiveRecord::Base
  belongs_to :headersale
  belongs_to :item
  belongs_to :user
end
