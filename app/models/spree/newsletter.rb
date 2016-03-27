module Spree
  class Newsletter < Spree::Base
  	has_attached_file :newsletter_img,  styles: { medium: "525x900#", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :newsletter_img, content_type: /\Aimage\/.*\Z/
  		validates :newsletter_img, presence: true
	  	validates :newsletter_h1, presence: true
	  	validates :newsletter_h2, presence: true
	  	validates :newsletter_url, presence: true
	  	validates :newsletter_p, presence: true
  end
end
