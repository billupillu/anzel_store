Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
  	 s3_credentials: {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  bucket: ENV['S3_BUCKET_NAME']
  },
    :mini => '60x76#', # thumbs under image
    :small => '270x340#', # images on category view
    :product => '500x630#', # full product image
    :large => '1000x1260>' # light box image
  }
end