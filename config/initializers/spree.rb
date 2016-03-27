
#--------------------------------------------
Spree.config do |config|
  config.admin_interface_logo = "logo.png"
  

  attachment_config={
  s3_credentials: {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  bucket: ENV['S3_BUCKET_NAME']
  },
  storage:     :s3,
  s3_headers:  {"Cache-Control"=>"max-age=31557600"},
  s3_protocol: "https",
  bucket:      ENV['ENV_BUCKET_NAME'],
  s3_host_name: "s3-us-west-2.amazonaws.com",
  url:         "url",
  styles:      {
                 mini:   "60x76#",
                 small:  "270x340#",
                 product:"670x844#",
                 large:  "700x881>"
               },
  path:        "/spree/:class/:id/:style/:basename.:extension",
  default_url: "/spree/products/:id/:style/:basename.:extension",
  default_style: "product",
  }
  attachment_config.each do |key,value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym]=value
  end
end

  
    







