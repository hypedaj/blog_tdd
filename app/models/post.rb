class Post < ActiveRecord::Base
	# Associations
  belongs_to :user
  belongs_to :blog
  has_many :messages

  # Validations
  validates_presence_of :title
  validates_presence_of :user
  validates_presence_of :blog
  
end
