class Product < ActiveRecord::Base
  attr_accessible :name, :price, :sku

  belongs_to :catagory
end
