class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :messages, dependent: :destroy

	validates_presence_of :email 
	validates_presence_of :first_name



end
