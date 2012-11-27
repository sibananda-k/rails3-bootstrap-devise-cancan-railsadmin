class Product < ActiveRecord::Base
  attr_accessible :name, :price, :sku, :catagory_id

  belongs_to :catagory
end
