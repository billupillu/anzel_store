module Spree
  class MenuBanner < Spree::Base
  	has_attached_file :img,  styles: { medium: "370x210>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :img,size: {less_than: 2.megabytes}
  	validates :img, presence: true
  	validates :h1, presence: true, length: { in: 2..40 }
  	validates :h2, presence: true, length: { in: 4..60 }
  	validates :p, presence: true, length: { in: 4..200 }
  	validates :url, presence: true
  end
end
