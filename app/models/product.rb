class Product < ActiveRecord::Base
  has_many :sellers, dependent: :destroy
end
