class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  # attr_accessible :title, :body
  attr_accessible :cart_id, :product_id
end