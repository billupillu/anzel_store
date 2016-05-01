Spree::Product.class_eval do
  validates :quality, presence: true, length: { in: 6..60 }
  validates :authenticity_letter, presence: true
end