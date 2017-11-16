class Client < ActiveRecord::Base
	has_many :memberships
	has_many :headersales

end
