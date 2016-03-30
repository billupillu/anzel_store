class ArtistProfile < ActiveRecord::Base
	has_attached_file :a_img,  styles: { medium: "220x220>", thumb: "750x450#" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :a_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :a_img,size: {less_than: 2.megabytes}

  	validates :a_name, presence: true, uniqueness: true,length: { in: 6..40 }
  	validates :a_brief, presence: true,length: { maximum: 600 }
  	validates :a_top_workshops, presence: true, length: { minimum: 100 }

end