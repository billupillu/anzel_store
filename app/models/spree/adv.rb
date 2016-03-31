module Spree
  class Adv < Spree::Base
  	has_attached_file :adv_img,  styles: { medium: "270x320#", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :adv_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :adv_img,size: {less_than: 2.megabytes}
  	validates :adv_img, presence: true
  	validates :adv_h1, presence: true, length: { in: 4..40 }
  	validates :adv_h2, presence: true, length: { in: 4..60 }
  	validates :adv_url, presence: true
  end
end
