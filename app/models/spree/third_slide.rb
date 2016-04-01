module Spree
  class ThirdSlide < Spree::Base
  	has_attached_file :item1_img,  styles: { medium: "292x470>", thumb: "60x38>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :item1_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :item1_img,size: {less_than: 3.megabytes}
  	has_attached_file :item2_img,  styles: { medium: "324x452>", thumb: "60x38>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :item2_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :item2_img,size: {less_than: 3.megabytes}

  	validates :item1_img, presence: true
  	validates :item2_img, presence: true
  	validates :price1, presence: true,length: { in: 1..30 }
  	validates :price2, presence: true,length: { in: 1..30 }
  	validates :h1, presence: true, length: { in: 4..40 }
  	validates :h2, presence: true, length: { in: 4..60 }
  	validates :p, presence: true, length: { in: 4..100 }
  	validates :url, presence: true
  end
end
