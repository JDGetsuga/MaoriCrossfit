class Lesson < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  has_many :classrecords
end
