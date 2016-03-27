module Spree
  class Candy < Spree::Base
  	has_attached_file :candy_img,  styles: { medium: "370x205#", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :candy_img, content_type: /\Aimage\/.*\Z/
  		validates :candy_img, presence: true
	  	validates :candy_h1, presence: true
	  	validates :candy_h2, presence: true
	  	validates :candy_url, presence: true
  end
end

