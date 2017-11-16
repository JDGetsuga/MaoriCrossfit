class Service < ActiveRecord::Base
	has_many :lessons
	has_many :memberships
	has_many :rates
end
