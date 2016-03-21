
#--------------------------------------------
Spree.config do |config|
  attachment_config={
  s3_credentials: {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  bucket: ENV['ENV_BUCKET_NAME']
  },
  storage:     :s3,
  s3_headers:  {"Cache-Control"=>"max-age=31557600"},
  s3_protocol: "https",
  bucket:      ENV['S3_BUCKET_NAME'],
  s3_host_name: "s3-us-west-2.amazonaws.com",
  url:         "url",
  styles:      {
                 mini:   "48x48>",
                 small:  "100x100>",
                 product:"240x240>",
                 large:  "600x600>"
               },
  path:        "/spree/:class/:id/:style/:basename.:extension",
  default_url: "/spree/products/:id/:style/:basename.:extension",
  default_style: "product",
  }
  attachment_config.each do |key,value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym]=value
  end
end

# https://s3-us-west-2.amazonaws.com/anzelstore/spree/spree/images/10/large/Abstract_1_on_canvas__28x_31_inches__acrylic_on_canvas__11538_-_Copy.JPG
# https://s3.amazonaws.com/anzelstore/spree/spree/images/10/mini/Abstract_1_on_canvas__28x_31_inches__acrylic_on_canvas__11538_-_Copy.JPG?1458365970

    







