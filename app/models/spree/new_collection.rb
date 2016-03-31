module Spree
  class NewCollection < Spree::Base
  	has_attached_file :new_collection_img,  styles: { medium: "270x320#", thumb: "100x100>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :new_collection_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :new_collection_img,size: {less_than: 2.megabytes}
  	validates :new_collection_img, presence: true
  	validates :new_collection_h1, presence: true, length: { in: 4..40 }
  	validates :new_collection_h2, presence: true, length: { in: 4..60 }
  	validates :new_collection_url, presence: true
  end
end
