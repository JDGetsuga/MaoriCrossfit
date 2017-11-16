class Item < ActiveRecord::Base
  belongs_to :supplier
  has_many :detail_sales
end
