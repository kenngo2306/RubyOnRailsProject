class Client < ActiveRecord::Base

  has_many :contacts
  belongs_to :state
end
