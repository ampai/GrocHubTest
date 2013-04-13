class Product < ActiveRecord::Base
  has_many :line_items
  attr_accessible :title, :description, :image_url, :price
  default_scope :order => 'title'

  before_destroy :ensure_not_referenced_by_any_line_item

  #Validation stuff

  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
      :with    => %r{\.(gif|jpg|png)$}i,
      :message => 'must be a URL for GIF, JPG or PNG image.'
  }

  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items presents')
      return false
    end
  end
end