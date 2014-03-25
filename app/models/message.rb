class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # Validations
  validates_presence_of :user
  validates_presence_of :post
  validates_presence_of :message
end
